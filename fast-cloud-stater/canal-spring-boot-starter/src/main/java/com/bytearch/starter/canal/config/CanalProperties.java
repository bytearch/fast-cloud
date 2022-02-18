package com.bytearch.starter.canal.config;


import org.apache.commons.lang.StringUtils;

/**
 * @author bytearch
 * @email bytearch@126.com
 * @Date 2021/12/2 10:16
 */
public class CanalProperties {
    /**
     * 是否开启 默认不开启
     */
    private boolean enable = false;
    /**
     * 模式
     * zookeeper: zk集群模式
     * simple: 简单直连模式
     */
    private String mode;

    /**
     * canal-server地址 多个地址逗号隔开
     */
    private String servers;

    /**
     * canal-server 的destination
     */
    private String destination;

    private String username = "";

    private String password = "";

    private int batchSize = 5 * 1024;

    private String filter = StringUtils.EMPTY;

    /**
     * getMessage & handleMessage 的重试次数, 最后一次重试会ack, 之前的重试会rollback
     */
    private int retries = 3;

    /**
     * getMessage & handleMessage 的重试间隔ms
     * canal-client内部代码 的重试间隔ms
     */
    private int retryInterval = 3000;

    private long getMessageTimeOutMS = 1000;

    public boolean isEnable() {
        return enable;
    }

    public void setEnable(boolean enable) {
        this.enable = enable;
    }

    public String getMode() {
        return mode;
    }

    public void setMode(String mode) {
        this.mode = mode;
    }

    public String getServers() {
        return servers;
    }

    public void setServers(String servers) {
        this.servers = servers;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getBatchSize() {
        return batchSize;
    }

    public void setBatchSize(int batchSize) {
        this.batchSize = batchSize;
    }

    public String getFilter() {
        return filter;
    }

    public void setFilter(String filter) {
        this.filter = filter;
    }

    public int getRetries() {
        return retries;
    }

    public void setRetries(int retries) {
        this.retries = retries;
    }

    public int getRetryInterval() {
        return retryInterval;
    }

    public void setRetryInterval(int retryInterval) {
        this.retryInterval = retryInterval;
    }

    public long getGetMessageTimeOutMS() {
        return getMessageTimeOutMS;
    }

    public void setGetMessageTimeOutMS(long getMessageTimeOutMS) {
        this.getMessageTimeOutMS = getMessageTimeOutMS;
    }
}
