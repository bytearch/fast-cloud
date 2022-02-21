package com.bytearch.fastcloud.idgenerator.spring.starter;

import com.bytearch.fastcloud.core.idgenerator.IdGenerator;
import com.bytearch.fastcloud.core.idgenerator.impl.IDGenDistributed;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.condition.ConditionalOnClass;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Lazy;
import org.springframework.context.annotation.Scope;

@Configuration
@ConditionalOnClass({IDGenDistributed.class})
@EnableConfigurationProperties({IDGeneratorProperties.class})
public class IDGeneratorAutoConfiguration {
    @Autowired(
            required = false
    )
    private IDGeneratorProperties idGeneratorProperties;

    public IDGeneratorAutoConfiguration() {
    }

    @Lazy(false)
    @Scope("singleton")
    @ConditionalOnMissingBean({IDGenDistributed.class})
    @Bean(
            initMethod = "init",
            destroyMethod = "close",
            name = {"idGenerator"}
    )
    public IdGenerator idGenDistributed() {
        return new IDGenDistributed(this.idGeneratorProperties);
    }
}
