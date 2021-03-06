package com.bytearch.fast.cloud.sharding;

import com.bytearch.fast.cloud.mysql.sharding.Application;
import com.bytearch.fast.cloud.mysql.sharding.common.ShardingStrategyConstant;
import com.bytearch.fast.cloud.mysql.sharding.dao.OrderPartitionByIdDao;
import com.bytearch.fast.cloud.mysql.sharding.dao.OrderPartitionByUserIdDao;
import com.bytearch.fast.cloud.mysql.sharding.pojo.entity.OrderEntity;
import com.bytearch.id.generator.SeqIdUtil;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;
import java.util.List;
import java.util.concurrent.ThreadLocalRandom;

@SpringBootTest(classes = {Application.class})
@RunWith(SpringJUnit4ClassRunner.class)
public class ShardingTest {
    @Autowired
    OrderPartitionByIdDao orderPartitionByIdDao;

    @Autowired
    OrderPartitionByUserIdDao orderPartitionByUserIdDao;

    @Test
    public void testCreateOrderRandom() {
        for (int i = 0; i < 20; i++) {
            int userId = ThreadLocalRandom.current().nextInt(1000,1000000);
            OrderEntity orderEntity = new OrderEntity();
            orderEntity.setOrderId(SeqIdUtil.nextId(userId % ShardingStrategyConstant.SHARDING_TABLE_NUM));
            orderEntity.setStatus(1);
            orderEntity.setUserId(userId);
            orderEntity.setCreateTime(new Date());
            orderEntity.setUpdateTime(new Date());
            orderEntity.setBookingDate(new Date());
            int ret = orderPartitionByIdDao.insertOrder(orderEntity);
            Assert.assertEquals(1, ret);
        }
    }

    @Test
    public void testOrderAll() {
        //insert
        int userId = ThreadLocalRandom.current().nextInt(1000,1000000);
        OrderEntity orderEntity = new OrderEntity();
        orderEntity.setOrderId(SeqIdUtil.nextId(userId % ShardingStrategyConstant.SHARDING_TABLE_NUM));
        orderEntity.setStatus(1);
        orderEntity.setUserId(userId);
        orderEntity.setCreateTime(new Date());
        orderEntity.setUpdateTime(new Date());
        orderEntity.setBookingDate(new Date());
        int i = orderPartitionByIdDao.insertOrder(orderEntity);
        Assert.assertEquals(1, i);

        //get from master
        OrderEntity orderInfo = orderPartitionByIdDao.getOrderByIdFromMaster(orderEntity.getOrderId());
        Assert.assertNotNull(orderInfo);
        Assert.assertEquals(orderInfo.getOrderId(), orderEntity.getOrderId());

        try {
            //???????????????????????????????????????
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        //get from slave
        OrderEntity slaveOrderInfo = orderPartitionByIdDao.getOrderById(orderEntity.getOrderId());
        Assert.assertNotNull(slaveOrderInfo);
        //update
        OrderEntity updateEntity = new OrderEntity();
        updateEntity.setOrderId(orderInfo.getOrderId());
        updateEntity.setStatus(2);
        updateEntity.setUpdateTime(new Date());
        int affectRows = orderPartitionByIdDao.updateOrderByOrderId(updateEntity);
        Assert.assertTrue( affectRows > 0);
    }

    @Test
    public void testGetListByUserId() {
        int userId = ThreadLocalRandom.current().nextInt(1000,1000000);
        for (int i = 0; i < 5; i++) {
            OrderEntity orderEntity = new OrderEntity();
            orderEntity.setOrderId(SeqIdUtil.nextId(userId % ShardingStrategyConstant.SHARDING_TABLE_NUM));
            orderEntity.setStatus(1);
            orderEntity.setUserId(userId);
            orderEntity.setCreateTime(new Date());
            orderEntity.setUpdateTime(new Date());
            orderEntity.setBookingDate(new Date());
            orderPartitionByIdDao.insertOrder(orderEntity);
        }
        try {
            //???????????????????????????????????????
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        List<OrderEntity> orderListByUserId = orderPartitionByUserIdDao.getOrderListByUserId(userId);
        Assert.assertNotNull(orderListByUserId);
        Assert.assertTrue(orderListByUserId.size() == 5);
    }
}
