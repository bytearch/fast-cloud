package com.bytearch.sharding.jdbc.mysql.demo.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.bytearch.sharding.jdbc.mysql.demo.entity.Order;
import org.springframework.stereotype.Repository;

@Repository
//@TableName("order")
public interface OrderMapper extends BaseMapper<Order> {
}
