package com.bytearch.fast.cloud.mysql.sharding.strategy;

import com.bytearch.fast.cloud.mysql.sharding.common.ShardingStrategyConstant;
import org.jfaster.mango.sharding.ShardingStrategy;

/**
 * 指定分片KEY 分库分表策略
 */
public class UserIdShardingStrategy implements ShardingStrategy<Integer, Integer> {

    @Override
    public String getDataSourceFactoryName(Integer userId) {
        //1. 计算步长 即单库放得表数量
        int step = ShardingStrategyConstant.SHARDING_TABLE_NUM / ShardingStrategyConstant.SHARDING_DATABASE_NODE_NUM;
        //2. 计算出库编号
        long dbNo = Math.floorDiv(userId % ShardingStrategyConstant.SHARDING_TABLE_NUM, step) + 1;
        //3. 返回数据源名
        return String.format("%s_%s", ShardingStrategyConstant.LOGIC_ORDER_DATABASE_NAME, dbNo);
    }

    @Override
    public String getTargetTable(String logicTableName, Integer userId) {
        // 基于约定，真实表名为 logicTableName_XXX， XXX不足三位补0
        return String.format("%s_%03d", logicTableName, userId % ShardingStrategyConstant.SHARDING_TABLE_NUM);
    }
}
