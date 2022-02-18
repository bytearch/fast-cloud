package com.bytearch.starter.canal.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import java.util.LinkedHashMap;
import java.util.Map;

/**
 * @author bytearch
 * @email bytearch@126.com
 * @Date 2021/12/2 10:15
 */
@ConfigurationProperties(prefix = "canal")
@Component
public class CanalConfig {
    private Map<String, CanalProperties> clients = new LinkedHashMap<>();

    public Map<String, CanalProperties> getClients() {
        return clients;
    }

    public void setClients(Map<String, CanalProperties> clients) {
        this.clients = clients;
    }
}
