package com.bytearch.cloud.redis.exception;

public class RedisAutoConfigException extends RuntimeException {
    public RedisAutoConfigException() {
    }

    public RedisAutoConfigException(String message) {
        super(message);
    }

    public RedisAutoConfigException(String message, Throwable cause) {
        super(message, cause);
    }

    public RedisAutoConfigException(Throwable cause) {
        super(cause);
    }

    public RedisAutoConfigException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
