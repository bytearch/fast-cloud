package com.bytearch.cloud.core.redis.serializer;

import com.bytearch.cloud.core.redis.serializer.exception.SerializationException;

import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;

/**
 * @author bytearch
 * @email bytearch@126.com
 * @Date 2022/1/12 22:03
 */
public class SerializationUtils {
    private static final Charset DEFAULT_CHARSET = Charset.forName("UTF-8");

    public static final byte[] EMPTY_ARRAY = new byte[0];

    public static final Map<byte[], byte[]> EMPTY_MAP = new HashMap<>();


    public static boolean isEmpty(byte[] data) {
        return (data == null || data.length == 0);
    }

    public static byte[] encode(String str) {
        if(str == null) {
            return SerializationUtils.EMPTY_ARRAY;
        }

        try {
            return str.getBytes(DEFAULT_CHARSET);
        } catch (Exception e) {
            throw new SerializationException("Could not write String: " + e.getMessage(), e);
        }
    }
}
