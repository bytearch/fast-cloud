package com.bytearch.fast.cloud.mysql.sharding.mq;

import org.apache.rocketmq.client.exception.MQClientException;
import org.apache.rocketmq.client.producer.DefaultMQProducer;
import org.apache.rocketmq.client.producer.SendCallback;
import org.apache.rocketmq.client.producer.SendResult;
import org.apache.rocketmq.common.message.Message;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import java.nio.charset.Charset;

public class BaseMsgProducer {
    private static final Logger logger = LoggerFactory.getLogger(BaseMsgProducer.class);

    private DefaultMQProducer defaultMQProducer;

    private int retryTimesWhenSendFailed = 3;




    @PostConstruct
    public void init() throws MQClientException {
        this.defaultMQProducer.start();
    }

    public void setDefaultMQProducer(DefaultMQProducer defaultMQProducer) {
        this.defaultMQProducer = defaultMQProducer;
        this.defaultMQProducer.setRetryTimesWhenSendFailed(retryTimesWhenSendFailed);
    }
    /**
     * @Description: 异步发送
     * @Date: 2020-06-11
     * @Param: [topic, tag, primaryKey, msg, delayedLevel]
     * @Return: void
     */
    public void sendAsyncMessage(String topic, String tag, String primaryKey, String msg, int delayedLevel) throws Exception {
        Message message = new Message(topic, tag, primaryKey, msg.getBytes(Charset.defaultCharset()));
        message.setDelayTimeLevel(delayedLevel);
        defaultMQProducer.send(message, new SendCallback() {
            @Override
            public void onSuccess(SendResult sendResult) {
                logger.info("Send RocketMQ is succeed! msgId={}, {}", sendResult.getMsgId(), sendResult.getSendStatus());
            }

            @Override
            public void onException(Throwable e) {
                logger.error("topic={}, primaryKey={}, sendAsyncMessage is failed!", topic, primaryKey, e);
            }
        });
    }

    @PreDestroy
    public void destroy() {
        this.defaultMQProducer.shutdown();
    }
}
