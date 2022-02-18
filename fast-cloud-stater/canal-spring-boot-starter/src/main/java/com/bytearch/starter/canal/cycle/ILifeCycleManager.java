package com.bytearch.starter.canal.cycle;

/**
 * 生命周期管理器，管理多个lifeCycle
 */
public interface ILifeCycleManager {
    /**
     * 启动
     *
     * @return
     */
    void start();

    /**
     * 停止
     *
     * @return
     */
    void stop();

    void addLifeCycle(String name,LifeCycle lifeCycle);
}
