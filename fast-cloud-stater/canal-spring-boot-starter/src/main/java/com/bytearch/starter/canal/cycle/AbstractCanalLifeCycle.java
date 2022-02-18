package com.bytearch.starter.canal.cycle;

import com.alibaba.otter.canal.client.CanalConnector;
import com.alibaba.otter.canal.protocol.CanalEntry;
import com.alibaba.otter.canal.protocol.Message;
import com.bytearch.starter.canal.handler.IMessageHandlerChain;
import com.bytearch.starter.canal.pojo.CanalEntryBO;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.SystemUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.MDC;
import org.springframework.util.CollectionUtils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/**
 *
 */
public abstract class AbstractCanalLifeCycle implements LifeCycle {

    protected Logger logger = LoggerFactory.getLogger(getClass());

    private volatile boolean running = false;
    protected Thread workThread = null;
    protected CanalConnector connector;
    protected Integer batchSize = 1024;
    protected Long timeout = 1L;
    protected String filter = StringUtils.EMPTY;
    protected String destination;
    protected IMessageHandlerChain messageHandlerChain;
    protected static final String SEP = SystemUtils.LINE_SEPARATOR;
    protected static final String DATE_FORMAT = "yyyy-MM-dd HH:mm:ss.SSS";
    protected Thread.UncaughtExceptionHandler handler = (t, e) -> logger.error("parse events has an error", e);
    protected String context_format = null;
    protected String row_format = null;
    protected String transaction_format = null;

    public AbstractCanalLifeCycle() {
        context_format = SEP + "****************************************************" + SEP;
        context_format += "* Batch Id: [{}] ,count : [{}] , memsize : [{}] , Time : {}" + SEP;
        context_format += "* Start : [{}] " + SEP;
        context_format += "* End : [{}] " + SEP;
        context_format += "****************************************************" + SEP;

        row_format = SEP
                + "----------------> binlog[{}:{}] , name[{},{}] , eventType : {} ,tableName : {}, executeTime : {} , delay : {}ms"
                + SEP;

        transaction_format = SEP + "================> binlog[{}:{}] , executeTime : {} , delay : {}ms" + SEP;
    }

    @Override
    public void start() {
        this.connector = getConnector();
        if (this.connector == null) {
            logger.warn("未配置CanalConnector,不启动");
            return;
        }
        workThread = new Thread(this::process);
        workThread.setName("lc-work-thread");
        workThread.setUncaughtExceptionHandler(handler);
        workThread.start();
        running = true;
        logger.info("canal lifeCycle {}  started", this.getClass().getName());
    }

    @Override
    public boolean isStart() {
        return running;
    }

    @Override
    public void stop() {
        if (!running) {
            return;
        }
        running = false;
        if (workThread != null) {
            try {
                workThread.join();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        }
        MDC.remove("destination");
    }

    @Override
    public void process() {
        while (running) {
            try {
                MDC.put("destination", destination);
                connector.connect();
                connector.subscribe(filter);
                while (running) {
                    String uuid = UUID.randomUUID().toString();
                    MDC.put("traceId", uuid.replace("-", ""));
                    // 获取指定数量的数据
                    Message message = connector.getWithoutAck(batchSize, timeout, TimeUnit.MILLISECONDS);
                    logger.debug("get message :{}", message);
                    long batchId = message.getId();
                    int size = message.getEntries().size();
                    if (batchId != -1 && size != 0) {
                        printSummary(message, batchId, size);
                        handles(message.getEntries());
                    }
                    // 提交确认
                    connector.ack(batchId);
                    // 处理失败, 回滚数据
//                     connector.rollback(batchId)
                }
            } catch (Exception e) {
                logger.error("ERROR: process error!", e);
            } finally {
                connector.disconnect();
                MDC.remove("destination");
                MDC.remove("traceId");
            }
        }
    }

    protected void handles(List<CanalEntry.Entry> entries) {
        for (CanalEntry.Entry entry : entries) {
            long executeTime = entry.getHeader().getExecuteTime();
            long delayTime = System.currentTimeMillis() - executeTime;

            if (entry.getEntryType() == CanalEntry.EntryType.ROWDATA) {
                CanalEntry.RowChange rowChage = null;
                try {
                    rowChage = CanalEntry.RowChange.parseFrom(entry.getStoreValue());
                } catch (Exception e) {
                    throw new RuntimeException("parse event has an error , data:" + entry.toString(), e);
                }

                CanalEntry.EventType eventType = rowChage.getEventType();
                if (eventType == CanalEntry.EventType.QUERY || rowChage.getIsDdl()) {
                    continue;
                }
                String tableName = entry.getHeader().getTableName();
                String schemaName = entry.getHeader().getSchemaName();
                logger.info(row_format,
                        entry.getHeader().getLogfileName(),
                        entry.getHeader().getLogfileOffset(), schemaName,
                        entry.getHeader().getTableName(), eventType, tableName,
                        entry.getHeader().getExecuteTime(), delayTime);

                for (CanalEntry.RowData rowData : rowChage.getRowDatasList()) {
                    CanalEntryBO canalEntryBO = new CanalEntryBO();
                    canalEntryBO.setRowData(rowData);
                    canalEntryBO.setTableName(tableName);
                    canalEntryBO.setEventType(eventType);
                    canalEntryBO.setSchemaName(schemaName);
                    canalEntryBO.setDestination(destination);
                    //业务处理
                    messageHandlerChain.handleMessage(canalEntryBO);
                }
            }
        }
    }

    private void printSummary(Message message, long batchId, int size) {
        long memsize = 0;
        for (CanalEntry.Entry entry : message.getEntries()) {
            memsize += entry.getHeader().getEventLength();
        }

        String startPosition = null;
        String endPosition = null;
        if (!CollectionUtils.isEmpty(message.getEntries())) {
            startPosition = buildPositionForDump(message.getEntries().get(0));
            endPosition = buildPositionForDump(message.getEntries().get(message.getEntries().size() - 1));
        }

        SimpleDateFormat format = new SimpleDateFormat(DATE_FORMAT);
        logger.info(context_format, new Object[]{batchId, size, memsize, format.format(new Date()), startPosition, endPosition});
    }

    protected String buildPositionForDump(CanalEntry.Entry entry) {
        long time = entry.getHeader().getExecuteTime();
        Date date = new Date(time);
        SimpleDateFormat format = new SimpleDateFormat(DATE_FORMAT);
        return entry.getHeader().getLogfileName() + ":" + entry.getHeader().getLogfileOffset() + ":"
                + entry.getHeader().getExecuteTime() + "(" + format.format(date) + ")";
    }

    public CanalConnector getConnector() {
        return connector;
    }

    public void setConnector(CanalConnector connector) {
        this.connector = connector;
    }

    /**
     * 处理器
     * @return
     */
    public IMessageHandlerChain getMessageHandlerChain() {
        return messageHandlerChain;
    }

    public void setMessageHandlerChain(IMessageHandlerChain messageHandlerChain) {
        this.messageHandlerChain = messageHandlerChain;
    }
}
