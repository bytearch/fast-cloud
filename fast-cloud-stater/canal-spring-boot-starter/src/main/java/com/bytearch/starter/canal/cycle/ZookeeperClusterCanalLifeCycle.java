package com.bytearch.starter.canal.cycle;

import com.alibaba.otter.canal.client.impl.ClusterCanalConnector;
import com.alibaba.otter.canal.client.impl.ClusterNodeAccessStrategy;
import com.alibaba.otter.canal.common.zookeeper.ZkClientx;
import com.bytearch.starter.canal.handler.IMessageHandlerChain;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


/**
 * @author bytearch
 * @email bytearch@126.com
 * @Date 2022/1/10 10:44
 */

public class ZookeeperClusterCanalLifeCycle extends AbstractCanalLifeCycle {
    public static Builder builder() {
        return Builder.builder();
    }
    public static final class Builder {
        protected Logger logger = LoggerFactory.getLogger(getClass());
        private String clientName;
        private String filter = StringUtils.EMPTY;
        private Integer batchSize = 1024;
        private Long timeout = 1L;
        private String zkServers;
        private String destination;
        private String userName;
        private String password;
        private int retries = 3;
        private int retryInterval = 3000;

        private IMessageHandlerChain messageHandlerChain;

        private Builder() {
        }

        public static Builder builder() {
            return new Builder();
        }

        public Builder zkServers(String zkServers) {
            this.zkServers = zkServers;
            return this;
        }


        public Builder destination(String destination) {
            this.destination = destination;
            return this;
        }

        public Builder userName(String userName) {
            this.userName = userName;
            return this;
        }

        public Builder password(String password) {
            this.password = password;
            return this;
        }

        public Builder filter(String filter) {
            this.filter = filter;
            return this;
        }

        public Builder batchSize(Integer batchSize) {
            this.batchSize = batchSize;
            return this;
        }

        public Builder timeout(Long timeout) {
            this.timeout = timeout;
            return this;
        }

        public Builder retries(int retries) {
            this.retries = retries;
            return this;
        }

        public Builder retryInterval(int retryInterval) {
            this.retryInterval = retryInterval;
            return this;
        }

        public Builder messageHandlerChain(IMessageHandlerChain messageHandlerChain) {
            this.messageHandlerChain = messageHandlerChain;
            return this;
        }


        public ZookeeperClusterCanalLifeCycle build() {
            ClusterCanalConnector connector = new ClusterCanalConnector(userName, password, destination, new ClusterNodeAccessStrategy(
                    destination,
                    ZkClientx.getZkClient(zkServers)
            ));
            connector.setSoTimeout(60 * 1000);
            connector.setIdleTimeout(60 * 60 * 1000);
            connector.setRetryTimes(retries);
            connector.setRetryInterval(retryInterval);
            ZookeeperClusterCanalLifeCycle zookeeperClusterCanalClient = new ZookeeperClusterCanalLifeCycle();
            zookeeperClusterCanalClient.setMessageHandlerChain(messageHandlerChain);
            zookeeperClusterCanalClient.setConnector(connector);
            zookeeperClusterCanalClient.filter = this.filter;
            zookeeperClusterCanalClient.batchSize = this.batchSize;
            zookeeperClusterCanalClient.timeout = this.timeout;
            zookeeperClusterCanalClient.destination = this.destination;
            return zookeeperClusterCanalClient;
        }

    }
}
