package com.bytearch.starter.canal.handler;


public interface Handler<M> {
    /**
     * 过滤条件
     * @param m
     * @return
     */
    boolean beforeHandle(M m);
    /**
     * 业务处理
     */
    void handle(M t);
}
