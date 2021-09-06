package com.bytearch.fast.cloud.mysql.sharding.dao;

import com.bytearch.fast.cloud.mysql.sharding.common.ShardingStrategyConstant;
import com.bytearch.fast.cloud.mysql.sharding.pojo.entity.OrderEntity;
import com.bytearch.fast.cloud.mysql.sharding.strategy.OrderIdShardingStrategy;
import org.jfaster.mango.annotation.*;

@DB(name = ShardingStrategyConstant.LOGIC_ORDER_DATABASE_NAME, table = "order")
@Sharding(shardingStrategy = OrderIdShardingStrategy.class)
public interface OrderPartitionByIdDao {

    @SQL("INSERT INTO #table (order_id, user_id, status, booking_date, create_time, update_time) VALUES" +
            "(:orderId,:userId,:status,:bookingDate,:createTime,:updateTime)"
    )
    int insertOrder(@TableShardingBy("orderId") @DatabaseShardingBy("orderId") OrderEntity orderEntity);

    @SQL("UPDATE #table set update_time = now()" +
            "#if(:bookingDate != null),booking_date = :bookingDate #end " +
            "#if (:status != null), status = :status #end" +
            "WHERE order_id = :orderId"
    )
    int updateOrderByOrderId(@TableShardingBy("orderId") @DatabaseShardingBy("orderId") OrderEntity orderEntity);


    @SQL("SELECT * FROM #table WHERE order_id = :1")
    OrderEntity getOrderById(@TableShardingBy @DatabaseShardingBy Long orderId);

    @SQL("SELECT * FROM #table WHERE order_id = :1")
    @UseMaster
    OrderEntity getOrderByIdFromMaster(@TableShardingBy @DatabaseShardingBy Long orderId);
}