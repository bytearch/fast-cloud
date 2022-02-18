package com.bytearch.fast.cloud.mysql.sharding.strategy;

import com.bytearch.fast.cloud.mysql.sharding.common.ShardingStrategyConstant;
import com.bytearch.id.generator.IdEntity;
import com.bytearch.id.generator.SeqIdUtil;
import org.jfaster.mango.sharding.ShardingStrategy;

/**
 * 订单号分库分表策略
 */
public class OrderIdShardingStrategy implements ShardingStrategy<Long, Long> {
    @Override
    public String getDataSourceFactoryName(Long orderId) {
        if (orderId == null || orderId < 0L) {
            throw new IllegalArgumentException("order_id is invalid!");
        }
        IdEntity idEntity = SeqIdUtil.decodeId(orderId);
        if (idEntity.getExtraId() >= ShardingStrategyConstant.SHARDING_TABLE_NUM) {
            throw new IllegalArgumentException("sharding table Num is invalid, tableNum:" + idEntity.getExtraId());
        }
        //1. 计算步长 即单库放的表数量
        int step = ShardingStrategyConstant.SHARDING_TABLE_NUM / ShardingStrategyConstant.SHARDING_DATABASE_NODE_NUM;
        //2. 计算出库编号
        long dbNo = Math.floorDiv(idEntity.getExtraId(), step) + 1;
        //3. 返回数据源名
        return String.format("%s_%s", ShardingStrategyConstant.LOGIC_ORDER_DATABASE_NAME, dbNo);
    }

    @Override
    public String getTargetTable(String logicTableName, Long orderId) {
        if (orderId == null || orderId < 0L) {
            throw new IllegalArgumentException("order_id is invalid!");
        }
        IdEntity idEntity = SeqIdUtil.decodeId(orderId);
        if (idEntity.getExtraId() >= ShardingStrategyConstant.SHARDING_TABLE_NUM) {
            throw new IllegalArgumentException("sharding table Num is invalid, tableNum:" + idEntity.getExtraId());
        }
        // 基于约定，真实表名为 logicTableName_XXX， XXX不足三位补0
        return String.format("%s_%03d", logicTableName, idEntity.getExtraId());
    }
}
