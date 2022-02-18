package com.bytearch.fast.cloud.mysql.sharding.dao;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.bytearch.fast.cloud.mysql.sharding.common.MQConstant;
import com.bytearch.fast.cloud.mysql.sharding.mq.BaseMsgProducer;
import com.bytearch.fast.cloud.mysql.sharding.pojo.entity.OrderEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderWriteWrapDao {

    @Autowired
    private OrderPartitionByIdDao orderPartitionByIdDao;

    @Autowired
    private BaseMsgProducer msgProducer;

   public int insertOrder(OrderEntity orderEntity) {
        int ret = orderPartitionByIdDao.insertOrder(orderEntity);
        if (ret > 0) {
            sendMQ(orderEntity);
        }
        return ret;
    }

    private void sendMQ(OrderEntity orderEntity) {
        if (orderEntity == null) {
            return;
        }
        String msgJson = JSON.toJSONString(orderEntity,
                SerializerFeature.QuoteFieldNames,
                SerializerFeature.SkipTransientField,
                SerializerFeature.WriteEnumUsingName,
                SerializerFeature.SortField,
                SerializerFeature.WriteMapNullValue,
                SerializerFeature.WriteNullStringAsEmpty
        );
        try {
            msgProducer.sendAsyncMessage(MQConstant.orderMsgTopic, String.valueOf(orderEntity.getStatus()), String.valueOf(orderEntity.getOrderId()), msgJson, 0);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
