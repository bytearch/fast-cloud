package com.bytearch.starter.canal.cycle;

import com.alibaba.otter.canal.client.CanalConnector;
import com.alibaba.otter.canal.client.CanalConnectors;
import com.bytearch.starter.canal.handler.IMessageHandlerChain;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Component;

import java.net.InetSocketAddress;
import java.util.concurrent.TimeUnit;

/**
 * @author bytearch
 * @email bytearch@126.com
 * @Date 2021/12/10 17:14
 */
@Component
public class SimpleCanalLifeCycle extends AbstractCanalLifeCycle {

    public static Builder builder(){
        return Builder.builder();
    }

    public static class Builder  {
        private String filter = StringUtils.EMPTY;
        private Integer batchSize = 1;
        private Long timeout = 1L;
        private TimeUnit unit = TimeUnit.SECONDS;
        private String hostname;
        private Integer port;
        private String destination;
        private String userName;
        private String password;
        private IMessageHandlerChain messageHandlerChain;

        private Builder() {

        }
        public static Builder builder() {
            return new Builder();
        }

        public Builder hostname(String hostname) {
            this.hostname = hostname;
            return this;
        }

        public Builder port(Integer port) {
            this.port = port;
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

        public Builder unit(TimeUnit unit) {
            this.unit = unit;
            return this;
        }

        public Builder messageHandleChain(IMessageHandlerChain messageHandlerChain) {
            this.messageHandlerChain  = messageHandlerChain;
            return this;
        }
        public SimpleCanalLifeCycle build() {
            CanalConnector canalConnector = CanalConnectors.newSingleConnector(new InetSocketAddress(hostname, port), destination, userName, password);
            SimpleCanalLifeCycle simpleCanalClient = new SimpleCanalLifeCycle();
            simpleCanalClient.setConnector(canalConnector);
            simpleCanalClient.setMessageHandlerChain(this.messageHandlerChain);
            simpleCanalClient.filter = this.filter;
            simpleCanalClient.batchSize = this.batchSize;
            simpleCanalClient.timeout = this.timeout;
            simpleCanalClient.destination = this.destination;
            return simpleCanalClient;
        }

    }
}
