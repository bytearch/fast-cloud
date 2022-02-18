package com.bytearch.starter.canal.annotation;


import java.lang.annotation.*;

/**
 * 数据库中的属性值
 */
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface Column {
    /**
     * 数据库中的字段值
     * @return
     */
    String column();
}
