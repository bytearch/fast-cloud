package com.bytearch.dubbo.demo.api;

import java.io.Serializable;

/**
 * 微服务读服务  读服务默认重试
 */
public interface IHelloQueryService extends Serializable {
    static final long serialVersionUID = -5915512369764637210L;

    public String getHello(String name);
}
