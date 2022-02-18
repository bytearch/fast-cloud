package com.bytearch.cloud.core.redis.serializer.exception;

/**
 * @author bytearch
 * @email bytearch@126.com
 * @Date 2022/1/12 22:00
 */
public class SerializationException extends RuntimeException {
    public SerializationException() {
        super();
    }

    public SerializationException(String message) {
        super(message);
    }

    public SerializationException(String message, Throwable cause) {
        super(message, cause);
    }
}
