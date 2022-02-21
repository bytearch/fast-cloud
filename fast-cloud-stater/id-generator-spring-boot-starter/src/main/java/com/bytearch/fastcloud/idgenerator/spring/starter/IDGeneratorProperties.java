package com.bytearch.fastcloud.idgenerator.spring.starter;

import com.bytearch.fastcloud.core.idgenerator.IDGenDistributedConfig;
import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(
        prefix = "id-generator"
)
public class IDGeneratorProperties extends IDGenDistributedConfig {
    public IDGeneratorProperties() {
    }
}