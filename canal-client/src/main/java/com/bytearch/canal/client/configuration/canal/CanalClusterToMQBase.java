package com.bytearch.canal.client.configuration.canal;

import com.alibaba.otter.canal.client.impl.ClusterCanalConnector;
import com.alibaba.otter.canal.client.impl.ClusterNodeAccessStrategy;
import com.alibaba.otter.canal.common.utils.NamedThreadFactory;
import com.alibaba.otter.canal.common.zookeeper.ZkClientx;
import com.alibaba.otter.canal.protocol.CanalEntry;
import com.alibaba.otter.canal.protocol.Message;
import com.bytearch.canal.client.util.DateUtils;
import com.bytearch.canal.client.util.MessageUtil;
import com.google.common.base.Strings;
import org.apache.rocketmq.client.producer.DefaultMQProducer;
import org.apache.rocketmq.common.ServiceState;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;

import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public abstract class CanalClusterToMQBase implements ICanalClient, ICanalToMQ, ApplicationListener<ContextRefreshedEvent> {
    protected org.slf4j.Logger log = org.slf4j.LoggerFactory.getLogger(this.getClass());

    @Value("${spring.profiles.active}")
    public String env;

    private CanalClientConfig config;
    private ClusterCanalConnector connector;
    private Long currentBatchId = null;

    protected volatile boolean running = false;
    protected ExecutorService executor;

    private DefaultMQProducer producer;
    private DefaultMQProducer preProducer;

    private DefaultMQProducer oldProducer;

    public CanalClusterToMQBase(CanalClientConfig config) {
        this.config = config;
    }

    @Override
    public void onApplicationEvent(ContextRefreshedEvent contextRefreshedEvent) {
        if (contextRefreshedEvent == null) {
            return;
        }

        ApplicationContext applicationContext = contextRefreshedEvent.getApplicationContext();
        if (null == applicationContext || null != applicationContext.getParent()) {
            return;
        }

        if ("false".equalsIgnoreCase(config.getStatus()) || "disable".equalsIgnoreCase(config.getStatus())) {
            log.warn("[destination={}] CanalClient disabled", this.config.getDestination());
            return;
        }

        Runtime.getRuntime().addShutdownHook(new Thread(this::stop));
        this.start();
    }

    private void process() {
        while (!running) { // waiting until running == true
            while (!running) {
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    // skip
                }
            }
        }

        log.info("[destination={}] Thread start succeed", this.config.getDestination());

        int retry = config.getRetries() == null
                || config.getRetries() == 0 ? 1 : config.getRetries();
        if (retry == -1) {
            // 重试次数-1代表异常时一直阻塞rollback重试, 否则之前的rollback最后一次ack
            retry = Integer.MAX_VALUE;
        }

        while (running) {
            try {
                this.connect();
                while (running) {
                    if (!running) {
                        break;
                    }

                    for (int i = 0; i < retry; i++) {
                        if (!running) {
                            break;
                        }
                        try {
                            List<CommonMessage> messages = this.getMessage();
                            this.handleMessage(messages);
                            this.ack();
                        } catch (Exception e) {
                            if (i != retry - 1) {
                                this.rollback();
                                log.warn("[destination={}] getMessage or handleMessage Error, and rollback! [{}/{}] {}", this.config.getDestination(), i + 1, retry, e.getMessage(), e);
                            } else {
                                this.ack();
                                log.error("[destination={}] getMessage or handleMessage Error, but ACK! [{}/{}] {}", this.config.getDestination(), i + 1, retry, e.getMessage(), e);
                            }
                            Thread.sleep(500);
                        } finally {
                           // MDCTrace.removeAll();
                        }
                    }

                }

                this.disconnect();
            } catch (Throwable e) {
                log.error("Canal connect ERROR! {}", e.getMessage(), e);
            }

            if (running) { // is reconnect
                log.warn("[destination={}] Canal reconnect in 2s", this.config.getDestination());
                try {
                    Thread.sleep(2000);
                } catch (InterruptedException e) {
                    // ignore
                }
            }
        }
    }

    public abstract void handleMessage(final List<CommonMessage> commonMessages);

    @Override
    public List<CommonMessage> getMessage() {
        try {
            if (connector == null || connector.getCurrentConnector() == null) {
                throw new RuntimeException("Connector has been gone.");
            }

            Long timeout = config.getGetMessageTimeout();
            Message message = connector.getWithoutAck(config.getBatchSize(), timeout, null);
            long batchId = message.getId();
            currentBatchId = batchId;
            int size = message.getEntries().size();
            if (batchId == -1 || size == 0) {
                if (timeout == null || timeout < 100L) {
                    Thread.sleep(100L);
                }
                return null;
            } else {
                List<CommonMessage> messageList = MessageUtil.convert(message);

                if ("dev".equals(env) && log.isDebugEnabled()) {
                    // log.debug("{}", messageList);
                }

                // log & perf
                try {
                    CanalEntry.Header headerFirst = message.getEntries().get(0).getHeader();
                    CanalEntry.Header headerLast = message.getEntries().get(message.getEntries().size() - 1).getHeader();
                    long delayMs = System.currentTimeMillis() - headerLast.getExecuteTime();
                    String delayStr = String.format("%.2f", ((double) (delayMs)) / 1000);
                    String logN = System.getProperty("line.separator");
                    log.info(logN + "****************************************************************************" + logN +
                                    "* destination: [{}]" + logN +
                                    "* zkServers: [{}]" + logN +
                                    "* batchId: [{}], size: [{}], memory: [{}MB/{}MB/{}MB]" + logN +
                                    "* 开始: [{}:{}:{}] ({})" + logN +
                                    "* 结束: [{}:{}:{}] ({})" + logN +
                                    "* 延时: {}s" + logN +
                                    "****************************************************************************" + logN,
                            config.getDestination(), config.getZkServers(),
                            batchId, messageList.size(),
                            (Runtime.getRuntime().maxMemory() - Runtime.getRuntime().freeMemory()) / 1048576,
                            Runtime.getRuntime().totalMemory() / 1048576,
                            Runtime.getRuntime().maxMemory() / 1048576,
                            headerFirst.getLogfileName(), headerFirst.getLogfileOffset(), headerFirst.getExecuteTime(),
                            DateUtils.getFormat(DateUtils.TIME_PATTERN_MS).format(headerFirst.getExecuteTime()),
                            headerLast.getLogfileName(), headerLast.getLogfileOffset(), headerLast.getExecuteTime(),
                            DateUtils.getFormat(DateUtils.TIME_PATTERN_MS).format(headerLast.getExecuteTime()),
                            delayStr
                    );
                    //TODO 监控
                } catch (Exception e) {
                    // ignore
                }
                // log & perf

                return messageList;
            }
        } catch (Throwable e) {
            this.reconnect();
            throw new RuntimeException(e);
        }
    }

    @Override
    public void rollback() {
        try {
            if (currentBatchId != null && currentBatchId > 0) {
                connector.rollback(currentBatchId);
                currentBatchId = null;
            }
        } catch (Exception e) {
            this.reconnect();
        } finally {
            currentBatchId = null;
        }
    }

    @Override
    public void ack() {
        try {
            if (currentBatchId != null && currentBatchId > 0) {
                connector.ack(currentBatchId);
                currentBatchId = null;
            }
        } catch (Exception e) {
            this.rollback();
            this.reconnect();
        } finally {
            currentBatchId = null;
        }
    }

    @Override
    public boolean isStart() {
        return running;
    }

    @Override
    public void start() {
        if (running) {
            return;
        }

        //log
        if (!Strings.isNullOrEmpty(this.getConfig().getLogName())) {
            log = org.slf4j.LoggerFactory.getLogger(this.getConfig().getLogName());
        }

        //await MQ-producerStart
        this.producerStart(true);

        executor = new ThreadPoolExecutor(
                1, 1,
                0L, TimeUnit.MILLISECONDS,
                new LinkedBlockingQueue<Runnable>(),
                new NamedThreadFactory("canal-worker-" + config.getDestination())
        );
        executor.submit(this::process);

        running = true;
    }

    @Override
    public void stop() {
        if (!running) {
            return;
        }
        running = false;

        if (this.config.getShutdownTimeout() > 0) {
            log.warn("[destination={}] Stop running...  Timeout={}s", this.config.getDestination(), this.config.getShutdownTimeout());
        } else {
            log.warn("[destination={}] Stop running...", this.config.getDestination());
        }

        try {
            if (executor != null && !executor.isTerminated()) {
                executor.shutdown();
                if (this.config.getShutdownTimeout() > 0) {
                    if (!executor.awaitTermination(this.config.getShutdownTimeout(), TimeUnit.SECONDS)) {
                        executor.shutdownNow();
                    }
                }
            }
            executor = null;

            // stop MQ-producers
            this.producerStop();

        } catch (Exception e) {
            log.warn(e.getMessage(), e);
        }
    }

    @Override
    public void connect() {
        this.connector = new ClusterCanalConnector(
                this.config.getUsername(),
                this.config.getPassword(),
                this.config.getDestination(),
                new ClusterNodeAccessStrategy(
                        this.config.getDestination(),
                        ZkClientx.getZkClient(this.config.getZkServers())
                )
        );
        this.connector.setSoTimeout(60 * 1000);
        // this.connector.setIdleTimeout(60 * 60 * 1000);
        this.connector.setRetryTimes(this.config.getRetryTimes());
        this.connector.setRetryInterval(this.config.getRetryInterval());
        this.connector.connect();
        log.info("[destination={}] Connect succeed, waiting for subscribe...", this.config.getDestination());
        this.connector.subscribe(this.config.getFilter());
        log.info("[destination={}] Subscribe succeed", this.config.getDestination());
    }

    @Override
    public void disconnect() {
        if (connector != null) {
            // connector.unsubscribe(); // 这里不需要 unsubscribe, 否则将从 zk 里删除 destination 信息
            connector.disconnect();
            connector.setRetryTimes(-1);
            connector = null;
            currentBatchId = null;
            log.warn("[destination={}] Disconnect succeed", this.config.getDestination());
        }
    }

    private void reconnect() {
        try {
            log.warn("[destination={}] reconnect[disconnect]...", this.config.getDestination());
            this.connector.disconnect();
            Thread.sleep(this.config.getRetryInterval());
            log.warn("[destination={}] reconnect[connect]...", this.config.getDestination());
            this.connector.connect();
            log.warn("[destination={}] reconnect success.", this.config.getDestination());
        } catch (Exception e) {
            log.error("[destination={}] reconnect ERROR! {}", this.config.getDestination(), e.getMessage(), e);
        }
    }

    @Override
    public final CanalClientConfig getConfig() {
        return config;
    }

    @Override
    public void producerStart(boolean await) {
        while ((getProducer() == null || getProducerServiceState() != ServiceState.RUNNING)) {
            try {
                log.info("[destination={}] MQProducer starting...", this.getConfig().getDestination());
                if (Strings.isNullOrEmpty(this.getConfig().getNamesrvAddr())) {
                    throw new RuntimeException("namesrvAddr can not be null or empty.");
                }
                producer = new DefaultMQProducer();
                producer.setNamesrvAddr(this.getConfig().getNamesrvAddr());
                producer.setRetryTimesWhenSendFailed(3);
                producer.setRetryTimesWhenSendAsyncFailed(3);
                producer.setSendMsgTimeout(5000);
                producer.setProducerGroup(this.getConfig().getDestination() + "_CanalGroup");
                producer.setInstanceName(this.getConfig().getDestination() + "_" + IpUtil.getLocalAddress() + "_" + System.currentTimeMillis());
                producer.start();
            } catch (Exception e) {
                try {
                    Thread.sleep(2000);
                } catch (InterruptedException ex) {
                    // ignore
                }
            }
            if (!await) {
                break;
            }
        }
        log.info("[destination={}] MQProducer start succeed", this.getConfig().getDestination());
    }

    @Override
    public void producerStop() {
        if (producer != null) {
            producer.shutdown();
        }
        producer = null;
        log.warn("[destination={}] MQProducer shutdown succeed", this.getConfig().getDestination());
    }

    @Override
    public DefaultMQProducer getProducer() {
        return this.producer;
    }

    @Override
    public ServiceState getProducerServiceState() {
        return this.producer.getDefaultMQProducerImpl().getServiceState();
    }

}