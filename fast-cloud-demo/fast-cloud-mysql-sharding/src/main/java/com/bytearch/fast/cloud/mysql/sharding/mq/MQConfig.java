package com.bytearch.fast.cloud.mysql.sharding.mq;

import org.apache.rocketmq.client.producer.DefaultMQProducer;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @author wangliang
 * @date 2018/4/18
 */
@Configuration
public class MQConfig {

    @Value("${spring.rocketmq.nameServer}")
    private String orderRocketUrl;

    @Bean
    public DefaultMQProducer getDefaultMQProducer(){
        DefaultMQProducer defaultMQProducer = new DefaultMQProducer();
        defaultMQProducer.setNamesrvAddr(orderRocketUrl);
        defaultMQProducer.setProducerGroup("orderGroup");
        defaultMQProducer.setRetryTimesWhenSendAsyncFailed(5);
        defaultMQProducer.setInstanceName("Order-Mysql-Sharding");
        defaultMQProducer.setSendMsgTimeout(5000);
        defaultMQProducer.setDefaultTopicQueueNums(16);
        return defaultMQProducer;
    }

    @Bean
    public BaseMsgProducer getProducer(){
        BaseMsgProducer baseMsgProducer = new BaseMsgProducer();
        baseMsgProducer.setDefaultMQProducer(getDefaultMQProducer());
        return baseMsgProducer;
    }
}
