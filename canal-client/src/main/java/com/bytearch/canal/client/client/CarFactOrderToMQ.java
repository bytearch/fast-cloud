package com.bytearch.canal.client.client;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.bytearch.canal.client.configuration.canal.CanalClientConfig;
import com.bytearch.canal.client.configuration.canal.CanalClusterToMQBase;
import com.bytearch.canal.client.configuration.canal.CommonMessage;
import com.bytearch.canal.client.configuration.canal.IpUtil;
import com.bytearch.canal.client.pojo.CarFactOrderEntity;
import com.bytearch.canal.client.pojo.MqCarFactOrderEntity;
import com.google.common.base.Strings;
import org.apache.rocketmq.client.producer.SendResult;
import org.apache.rocketmq.client.producer.SendStatus;
import org.apache.rocketmq.client.producer.selector.SelectMessageQueueByHash;
import org.apache.rocketmq.common.message.Message;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class CarFactOrderToMQ extends CanalClusterToMQBase {
    private static final Logger failedLog = LoggerFactory.getLogger("factOrderFailedLog");

    public CarFactOrderToMQ(CanalClientConfig config) {
        super(config);
    }

    @Override
    public void handleMessage(List<CommonMessage> commonMessages) {
        if (commonMessages == null || commonMessages.size() == 0) {
            return;
        }

        String topicName = "carFactOrderToMQ_topic_" + this.getConfig().getTopic();

        for (CommonMessage message : commonMessages) {
            if (!"car_fact_order".equals(message.getTable())) {
                continue;
            }
            if (message.getType() == null || !Arrays.asList("INSERT", "UPDATE").contains(message.getType())) {
                continue;
            }
            if (message.getData() == null || message.getData().size() == 0) {
                continue;
            }

            for (int k = 0; k < message.getData().size(); k++) {
                Map<String, Object> data = message.getData().get(k);

                if (data == null) {
                    continue;
                }

                Date msgBornDate = new Date();
                if (message.getEs() != null && message.getEs() > 0L) {
                    msgBornDate = new Date(message.getEs());
                }

                CarFactOrderEntity entity = JSONObject.parseObject(JSONObject.toJSONString(data), CarFactOrderEntity.class);
                MqCarFactOrderEntity mqEntity = MqCarFactOrderEntity.buildFromEntity(entity, msgBornDate, IpUtil.getLocalAddress(), message.getType(), message.getOld() != null ? message.getOld().get(k) : null);

                if (Strings.isNullOrEmpty(mqEntity.getOrderNo()) || "null".equals(mqEntity.getOrderNo())) {
                    continue;
                }
                if (Strings.isNullOrEmpty(mqEntity.getType()) || "null".equals(mqEntity.getType())) {
                    continue;
                }
                if (Strings.isNullOrEmpty(mqEntity.getStatus()) || "null".equals(mqEntity.getStatus())) {
                    continue;
                }

                //trace

                String msgJson = JSON.toJSONString(mqEntity,
                        SerializerFeature.QuoteFieldNames,
                        SerializerFeature.SkipTransientField,
                        SerializerFeature.WriteEnumUsingName,
                        SerializerFeature.SortField,
                        SerializerFeature.WriteMapNullValue,
                        SerializerFeature.WriteNullStringAsEmpty
                );

                if (log.isDebugEnabled()) {
                    log.debug("{}_{} {}", mqEntity.getType(), mqEntity.getStatus(), msgJson);
                }

                String hashKey = mqEntity.getOrderNo();
                // 改派按原始订单号hash
                try {
                    if (!Strings.isNullOrEmpty(mqEntity.getMemo()) && !"{}".equals(mqEntity.getMemo())) {
                        Map memoMap = JSONObject.parseObject(mqEntity.getMemo(), Map.class);
                        String originalOrderNo = memoMap.get("originalOrderNo").toString();
                        if (!Strings.isNullOrEmpty(originalOrderNo)) {
                            hashKey = originalOrderNo;
                            log.info("{}_{} originalOrderNo={}", mqEntity.getType(), mqEntity.getStatus(), originalOrderNo);
                        }
                    }
                } catch (Exception e) {
                    // ignore
                }

                String tag = mqEntity.getType() + "_" + mqEntity.getStatus();

                for (int i = 0; i < this.getConfig().getRetryTimesWhenSendFailed(); i++) {
                    try {
                        long start = System.currentTimeMillis();
                        Message msg = new Message(
                                topicName, tag,
                                mqEntity.getOrderNo(),
                                msgJson.getBytes(StandardCharsets.UTF_8)
                        );

                        SendResult result = null;
                        result = this.getProducer().send(msg, new SelectMessageQueueByHash(), hashKey);

                        if (result == null || result.getSendStatus() != SendStatus.SEND_OK) {
                            throw new RuntimeException("CarFactOrderCanal mq-send failed.");
                        }

                        //监控
                        log.info("{}_{} {}", mqEntity.getType(), mqEntity.getStatus(), "send success.");

                        // send old =================

                        break;

                    } catch (Exception e) {
                        try {
                            if (i == this.getConfig().getRetryTimesWhenSendFailed() - 1) {
                                log.error("{}_{} send ERROR! ({}次重试/{}) {}",
                                        mqEntity.getType(), mqEntity.getStatus(),
                                        i + 1, this.getConfig().getRetryTimesWhenSendFailed(),
                                        e.getMessage(), e
                                );
                                if (!mqEntity.getOrderNo().endsWith("X")) {
                                    failedLog.info(msgJson);
                                }
                            } else {
                                log.warn("{}_{} send retry! ({}次重试/{}) {}",
                                        mqEntity.getType(), mqEntity.getStatus(),
                                        i + 1, this.getConfig().getRetryTimesWhenSendFailed(),
                                        e.getMessage(), e
                                );
                            }
                        } catch (Exception e2) {
                            // ignore
                        }
                    }
                }

            }
        }
    }

}