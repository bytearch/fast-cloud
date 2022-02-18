package com.bytearch.cloud.core.redis.serializer.jackson;

import com.bytearch.cloud.core.redis.serializer.SerializationUtils;
import com.bytearch.cloud.core.redis.serializer.Serializer;
import com.bytearch.cloud.core.redis.serializer.exception.SerializationException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * @author bytearch
 * @email bytearch@126.com
 * @Date 2022/1/12 22:01
 */
public class Jackson2JsonSerializer implements Serializer<Object> {
    private ObjectMapper objectMapper = new ObjectMapper();

    public Jackson2JsonSerializer() {
    }

    @Override
    public byte[] serialize(Object t) throws SerializationException {
        if (t == null) {
            return SerializationUtils.EMPTY_ARRAY;
        }

        try {
            return this.objectMapper.writeValueAsBytes(t);
        } catch (Exception e) {
            throw new SerializationException("Could not write JSON: " + e.getMessage(), e);
        }
    }

    @Override
    public <T> T deserialize(byte[] bytes, Class<T> clz) throws SerializationException {
        if (SerializationUtils.isEmpty(bytes)) {
            return null;
        }

        try {
            return this.objectMapper.readValue(bytes, 0, bytes.length, clz);
        } catch (Exception e) {
            throw new SerializationException("Could not read JSON: " + e.getMessage(), e);
        }
    }

    public <T> T deserialize(byte[] bytes, TypeReference<T> tr) throws SerializationException {
        if (SerializationUtils.isEmpty(bytes)) {
            return null;
        }

        try {
            return this.objectMapper.readValue(bytes, tr);
        } catch (Exception e) {
            throw new SerializationException("Could not read JSON: " + e.getMessage(), e);
        }
    }
}
