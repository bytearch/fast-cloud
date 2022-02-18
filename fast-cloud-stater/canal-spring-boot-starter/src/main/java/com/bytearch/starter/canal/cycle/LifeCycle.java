package com.bytearch.starter.canal.cycle;

/**
 * 生命周期管理
 */
public interface LifeCycle {
    /**
     * 启动
     * @return
     */
    void start();

    /**
     * 停止
     * @return
     */
    void stop();

    /**
     * 是否启动
     *
     * @return true已启动 false未启动
     */
    boolean isStart();

    /**
     * 处理
     */
    void  process();
}
