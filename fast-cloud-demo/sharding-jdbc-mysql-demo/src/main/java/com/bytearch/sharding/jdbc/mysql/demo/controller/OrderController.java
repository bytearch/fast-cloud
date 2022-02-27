package com.bytearch.sharding.jdbc.mysql.demo.controller;

import com.bytearch.sharding.jdbc.mysql.demo.entity.Order;
import com.bytearch.sharding.jdbc.mysql.demo.mapper.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

@RequestMapping("/order")
@RestController
public class OrderController {
    @Autowired
    OrderMapper orderMapper;

    /**
     * 创建订单
     * @param userId
     * @return
     */
    @RequestMapping("/create")
    public int create(@RequestParam(name = "userId") Integer userId) {
        Order order = new Order();
        order.setStatus(1);
        order.setOrderId(10843194380L);
        order.setUserId(userId);
        order.setCreateTime(new Date());
        order.setUpdateTime(new Date());
        order.setBookingDate(new Date());
       return orderMapper.insert(order);

    }

    @RequestMapping("/getOne")
    public Object getOne(@RequestParam(name = "orderId") Long orderId) {
       return orderMapper.selectById(orderId);
    }
}
