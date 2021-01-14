package com.bytearch.canal.client.configuration.canal;

import java.util.List;

public interface ICanalClient {
    boolean isStart();

    void start();

    void stop();

    void connect();

    void disconnect();

    /**
     * 批量拉取数据
     */
    List<CommonMessage> getMessage();

    /**
     * 提交
     */
    void ack();

    /**
     * 回滚
     */
    void rollback();

    CanalClientConfig getConfig();
}
