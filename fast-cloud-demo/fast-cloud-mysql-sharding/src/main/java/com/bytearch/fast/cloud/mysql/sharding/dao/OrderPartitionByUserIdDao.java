package com.bytearch.fast.cloud.mysql.sharding.dao;

import com.bytearch.fast.cloud.mysql.sharding.common.ShardingStrategyConstant;
import com.bytearch.fast.cloud.mysql.sharding.pojo.entity.OrderEntity;
import com.bytearch.fast.cloud.mysql.sharding.strategy.UserIdShardingStrategy;
import org.jfaster.mango.annotation.*;

import java.util.List;

@DB(name = ShardingStrategyConstant.LOGIC_ORDER_DATABASE_NAME, table = "order")
@Sharding(shardingStrategy = UserIdShardingStrategy.class)
public interface OrderPartitionByUserIdDao {
    @SQL("SELECT * FROM #table WHERE user_id = :1")
    List<OrderEntity> getOrderListByUserId(@TableShardingBy @DatabaseShardingBy Integer userId);
}
