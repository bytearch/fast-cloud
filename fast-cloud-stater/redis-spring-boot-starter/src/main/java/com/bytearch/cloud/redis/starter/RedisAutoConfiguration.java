package com.bytearch.cloud.redis.starter;

import com.bytearch.cloud.core.redis.client.RedisClient;
import com.bytearch.cloud.core.redis.facade.RedisSupport;
import com.bytearch.cloud.core.redis.serializer.enums.SerializerEnum;
import com.bytearch.cloud.redis.config.RedisProperties;
import com.bytearch.cloud.redis.exception.RedisAutoConfigException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.autoconfigure.condition.ConditionalOnClass;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@ConditionalOnClass(RedisProperties.class)
@EnableConfigurationProperties(RedisProperties.class)
public class RedisAutoConfiguration {
    protected Logger logger = LoggerFactory.getLogger(getClass());

    @Bean
    @ConditionalOnMissingBean(RedisSupport.class)
    public RedisSupport redisClient(RedisProperties redisProperties) {
        if (redisProperties == null) {
            throw new RedisAutoConfigException("redis config is not exists! ");
        }
       return new RedisClient(redisProperties.getHostAndPort(), redisProperties.getPrefix(), redisProperties.getAuth(), SerializerEnum.JACKSON2JSON,
                redisProperties.getMaxIdle(), redisProperties.getMaxTotal(), redisProperties.getMinIdle(), redisProperties.getConnectionTimeout(),
                redisProperties.getSoTimeout(), redisProperties.getMaxAttempts());
    }
}
