package com.bytearch.starter.canal.cycle;

import com.bytearch.starter.canal.config.CanalProperties;
import com.bytearch.starter.canal.enums.EnumMode;
import com.bytearch.starter.canal.handler.IMessageHandlerChain;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author bytearch
 * @email bytearch@126.com
 * @Date 2022/1/12 15:19
 */
public class LifeCycleFactory {
    protected static Logger logger = LoggerFactory.getLogger(LifeCycleFactory.class);

    public static LifeCycle buildLifeCycle(CanalProperties config, IMessageHandlerChain messageHandlerChain) {
        EnumMode modeEnum = EnumMode.getModeEnum(config.getMode());
        if (modeEnum == null) {
            logger.error("canal client mode :{} is not exists!", config.getMode());
        }
        LifeCycle lifeCycle = null;
        switch (modeEnum) {
            case SIMPLE:
                String servers = config.getServers();
                String[] split = servers.split(":");

                lifeCycle = SimpleCanalLifeCycle.builder()
                        .hostname(split[0])
                        .port(Integer.parseInt(split[1]))
                        .destination(config.getDestination())
                        .userName(config.getUsername())
                        .password(config.getPassword())
                        .batchSize(config.getBatchSize())
                        .filter(config.getFilter())
                        .timeout(config.getGetMessageTimeOutMS())
                        .messageHandleChain(messageHandlerChain)
                        .build();
                break;
            case ZOOKEEPER:
                lifeCycle = ZookeeperClusterCanalLifeCycle.builder()
                        .zkServers(config.getServers())
                        .batchSize(config.getBatchSize())
                        .destination(config.getDestination())
                        .filter(config.getFilter())
                        .retries(config.getRetries())
                        .retryInterval(config.getRetryInterval())
                        .timeout(config.getGetMessageTimeOutMS())
                        .userName(config.getUsername())
                        .password(config.getPassword())
                        .messageHandlerChain(messageHandlerChain)
                        .build();
                break;

        }
        return lifeCycle;
    }

}
