package com.bytearch.sharding.jdbc.mysql.demo.shardingAlgorithm;

import com.bytearch.fastcloud.core.idgenerator.IdGenerator;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.shardingsphere.api.sharding.standard.PreciseShardingAlgorithm;
import org.apache.shardingsphere.api.sharding.standard.PreciseShardingValue;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Collection;

@Component
@Slf4j
public class OrderDBPreciseShardingAlgorithm implements PreciseShardingAlgorithm<Long> {
    @Autowired
    IdGenerator idGenerator;

    @Override
    public String doSharding(Collection<String> databaseNames, PreciseShardingValue<Long> shardingValue) {
        //根据订单号分片
        if (StringUtils.equals("order_id", shardingValue.getColumnName())) {
            long shardKey = idGenerator.decodeExtraDataFromId(shardingValue.getValue());
            int dsNo = (int)Math.floor(shardKey % 64) + 1;
            String datasource = String.format("%s%s", "order-db", dsNo);
            if (databaseNames.contains(datasource)) {
                return datasource;
            } else {
                log.error("database not exists!");
            }
        }
        if (StringUtils.equals("user_id", shardingValue.getColumnName())) {
           int dsNo =  (int)Math.floor((shardingValue.getValue() % 256) >> 6) + 1;
            String datasource = String.format("%s%s", "order-db", dsNo);
            if (databaseNames.contains(datasource)) {
                return datasource;
            } else {
                log.error("database not exists!");
            }
        }
        return null;
    }
}
