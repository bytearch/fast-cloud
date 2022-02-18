package com.bytearch.starter.canal.enums;

import org.apache.commons.lang.StringUtils;

/**
 * mode枚举
 */
public enum EnumMode {
    SIMPLE("simple"),
    ZOOKEEPER("zookeeper");

    private String mode;

    EnumMode(String mode) {
        this.mode = mode;
    }

    public String getMode() {
        return mode;
    }

    public static EnumMode getModeEnum(String modeStr) {
        if (StringUtils.isBlank(modeStr)) {
            return null;
        }
        for (EnumMode enumMode : EnumMode.values()) {
            if (enumMode.mode.equals(modeStr)) {
                return enumMode;
            }
        }
        return null;
    }
}
