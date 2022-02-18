package com.bytearch.starter.canal.handler;

/**
 *
 * @author bytearch
 * 处理链
 */
public interface IMessageHandlerChain<M> {

    /**
     * 业务处理
     *
     * @param
     */
    void handleMessage(M m);

    /**
     * 添加处理器
     *
     * @param handler
     */
    void addHandler(Handler<M> handler);
}
