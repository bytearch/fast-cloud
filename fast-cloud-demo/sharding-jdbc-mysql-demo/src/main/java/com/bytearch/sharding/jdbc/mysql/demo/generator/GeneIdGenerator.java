package com.bytearch.sharding.jdbc.mysql.demo.generator;

import com.bytearch.fastcloud.core.idgenerator.IdGenerator;
import org.apache.shardingsphere.spi.keygen.ShardingKeyGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Properties;

@Component
public class GeneIdGenerator implements ShardingKeyGenerator {
    @Autowired
    IdGenerator idGenerator;

    @Override
    public Comparable<?> generateKey() {
        return idGenerator.generate();
    }

    @Override
    public String getType() {
        return "GeneID";
    }

    @Override
    public Properties getProperties() {
        return null;
    }

    @Override
    public void setProperties(Properties properties) {

        System.out.println(properties);
    }
}
