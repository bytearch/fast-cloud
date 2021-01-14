package com.bytearch.canal.client.configuration.canal;

import org.apache.rocketmq.client.producer.DefaultMQProducer;
import org.apache.rocketmq.common.ServiceState;

/**
 * iyw
 */
public interface ICanalToMQ {
    void producerStart(boolean await);

    void producerStop();

    DefaultMQProducer getProducer();

    ServiceState getProducerServiceState();

}
