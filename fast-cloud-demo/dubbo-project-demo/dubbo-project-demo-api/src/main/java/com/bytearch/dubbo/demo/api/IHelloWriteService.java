package com.bytearch.dubbo.demo.api;

import java.io.Serializable;

/**
 * 微服务写服务，写服务默认不重试，是否由上层业务决定
 */
public interface IHelloWriteService extends Serializable {
    static final long serialVersionUID = -5915512369764637210L;

    public String write(String name);
}
