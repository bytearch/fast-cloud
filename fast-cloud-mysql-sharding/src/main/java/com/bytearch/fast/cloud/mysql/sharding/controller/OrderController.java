package com.bytearch.fast.cloud.mysql.sharding.controller;

import com.bytearch.fast.cloud.mysql.sharding.common.ResponseResult;
import com.bytearch.fast.cloud.mysql.sharding.common.ShardingStrategyConstant;
import com.bytearch.fast.cloud.mysql.sharding.dao.OrderPartitionByIdDao;
import com.bytearch.fast.cloud.mysql.sharding.pojo.entity.OrderEntity;
import com.bytearch.id.generator.SeqIdUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

@RestController
@RequestMapping("/order")
public class OrderController {
    @Autowired
    OrderPartitionByIdDao orderPartitionByIdDao;
    @RequestMapping("/create")
    public ResponseResult create(@RequestParam(name = "userId") Integer userId) {
        OrderEntity orderEntity = new OrderEntity();
        orderEntity.setOrderId(SeqIdUtil.nextId(userId % ShardingStrategyConstant.SHARDING_TABLE_NUM));
        orderEntity.setStatus(1);
        orderEntity.setUserId(userId);
        orderEntity.setCreateTime(new Date());
        orderEntity.setUpdateTime(new Date());
        orderEntity.setBookingDate(new Date());
        int ret = orderPartitionByIdDao.insertOrder(orderEntity);
        if( ret > 0) {
            return ResponseResult.buildSuccess(orderEntity.getOrderId());
        } else {
            return ResponseResult.buildError(1, "下单失败");
        }
    }

    @RequestMapping("/getOne")
    public ResponseResult getOne(@RequestParam(name = "orderId") Long orderId) {
        OrderEntity orderInfo = orderPartitionByIdDao.getOrderById(orderId);
        return ResponseResult.buildSuccess(orderInfo);
    }
}
