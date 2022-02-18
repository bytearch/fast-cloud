package com.bytearch.starter.canal.utils;

import com.alibaba.otter.canal.protocol.CanalEntry;
import com.bytearch.starter.canal.annotation.Column;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.apache.commons.lang3.time.DateUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.util.ReflectionUtils;

import java.lang.reflect.Field;
import java.util.Date;
import java.util.List;

/**
 * @author bytearch
 */
public class CanalAnalysisUtil {

    protected static Logger logger = LoggerFactory.getLogger(CanalAnalysisUtil.class);

    public static <T>  T  analysis(Class<T> tClass, List<CanalEntry.Column> columns) {
        T t = BeanUtils.instantiateClass(tClass);
        for (CanalEntry.Column column : columns) {
            getProperty(t, column);
        }
        return t;
    }

    /**
     * 解析数据
     *
     * @param t
     * @param column
     * @param <T>
     */
    private static <T> void getProperty(T t, CanalEntry.Column column) {
        try {
            Field[] fields = t.getClass().getDeclaredFields();
            for (Field f : fields) {
                Column propertyColumn = f.getAnnotation(Column.class);
                if (propertyColumn == null) {
                    continue;
                }
                if (propertyColumn.column().equals(column.getName())) {
                    String value = column.getValue();
                    if (StringUtils.isBlank(value)) {
                        continue;
                    }
                    ReflectionUtils.makeAccessible(f);
                    String type = f.getGenericType().getTypeName();
                    if (type.equals(Integer.class.getName())) {
                        f.set(t, Integer.parseInt(value));
                    } else if (type.equals(Long.class.getName())) {
                        f.set(t, Long.parseLong(value));
                    } else {
                        f.set(t, value);
                    }
                }
            }
        } catch (Throwable e) {
            logger.error("解析数据失败 className:{}", t.getClass().getName(), e);
        }
    }
}
