package com.bytearch.fast.cloud.mysql.sharding.common;

import org.apache.commons.lang3.StringUtils;

/**
 * 分库分表策略常用常量
 */
public class ShardingStrategyConstant {
    /**
     * database 逻辑名称 ，真实库名为 order_db_XXX
     */
    public static final String LOGIC_ORDER_DATABASE_NAME = "order_db";
    /**
     * 分表数 256，一旦确定不可更改
     */
    public static final int SHARDING_TABLE_NUM = 256;

    /**
     * 分库数, 不建议更改， 可以更改，但是需要DBA迁移数据
     */
    public static final int SHARDING_DATABASE_NODE_NUM = 4;
}
