package com.bytearch.cloud.core.redis.serializer.enums;
public enum SerializerEnum {
    JACKSON2JSON(0),

    PROTOSTUFF(1);

    private int type;

    public void setType(int type) {
        this.type = type;
    }

    public int getType() {
        return this.type;
    }

    SerializerEnum(int type) {
        this.type = type;
    }

    public static SerializerEnum find(int type) {
        for (SerializerEnum se : values()) {
            if (se.type == type) {
                return se;
            }
        }
        return null;
    }

    public static boolean exist(int type) {
        return find(type) != null;
    }
}
