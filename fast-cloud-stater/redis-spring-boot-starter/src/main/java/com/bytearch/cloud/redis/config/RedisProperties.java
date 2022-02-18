package com.bytearch.cloud.redis.config;

import org.springframework.boot.context.properties.ConfigurationProperties;

import java.util.List;


@ConfigurationProperties(prefix = "spring.redis")
public class RedisProperties {
    private String auth;
    private String prefix;
    private Integer maxIdle;
    private Integer maxTotal;
    private Integer minIdle;
    private Integer connectionTimeout;
    private Integer soTimeout;
    private Integer maxAttempts;
    private List<String> clusters;

    public String getHostAndPort() {
        if (getClusters() == null || getClusters().size() == 0) {
            return null;
        }

        StringBuilder hosts = new StringBuilder();
        getClusters().forEach(redisHostConfig -> hosts.append(redisHostConfig).append(","));

        return hosts.deleteCharAt(hosts.length() - 1).toString();
    }

    public String getAuth() {
        return auth;
    }

    public void setAuth(String auth) {
        this.auth = auth;
    }

    public String getPrefix() {
        return prefix;
    }

    public void setPrefix(String prefix) {
        this.prefix = prefix;
    }

    public Integer getMaxIdle() {
        return maxIdle;
    }

    public void setMaxIdle(Integer maxIdle) {
        this.maxIdle = maxIdle;
    }

    public Integer getMaxTotal() {
        return maxTotal;
    }

    public void setMaxTotal(Integer maxTotal) {
        this.maxTotal = maxTotal;
    }

    public Integer getMinIdle() {
        return minIdle;
    }

    public void setMinIdle(Integer minIdle) {
        this.minIdle = minIdle;
    }

    public Integer getConnectionTimeout() {
        return connectionTimeout;
    }

    public void setConnectionTimeout(Integer connectionTimeout) {
        this.connectionTimeout = connectionTimeout;
    }

    public Integer getSoTimeout() {
        return soTimeout;
    }

    public void setSoTimeout(Integer soTimeout) {
        this.soTimeout = soTimeout;
    }

    public Integer getMaxAttempts() {
        return maxAttempts;
    }

    public void setMaxAttempts(Integer maxAttempts) {
        this.maxAttempts = maxAttempts;
    }

    public List<String> getClusters() {
        return clusters;
    }

    public void setClusters(List<String> clusters) {
        this.clusters = clusters;
    }
}
