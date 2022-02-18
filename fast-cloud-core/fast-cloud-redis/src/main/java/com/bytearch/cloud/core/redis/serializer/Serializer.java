package com.bytearch.cloud.core.redis.serializer;

import com.bytearch.cloud.core.redis.serializer.exception.SerializationException;

/**
 * @author bytearch
 * @email bytearch@126.com
 * @Date 2022/1/12 21:59
 */
public interface Serializer<T> {
    public byte[] serialize(T t) throws SerializationException;

    public <T> T deserialize(byte[] bytes, Class<T> clz) throws SerializationException;
}
