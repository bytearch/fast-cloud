package com.bytearch.starter.canal.starter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

import java.lang.annotation.Annotation;
import java.util.Map;

/**
 * @author bytearch
 * @email bytearch@126.com
 * @Date 2021/12/10 17:00
 */
@Component
public class BeanUtil implements ApplicationContextAware {
    private Logger logger = LoggerFactory.getLogger(getClass());

    private static ApplicationContext applicationContext;

    public static <T> T getBean(Class<T> clazz) {
        return applicationContext.getBean(clazz);
    }

    public static Map<String, Object> getBeansWithAnnotaion(Class<? extends Annotation> annoClazz) {
        return applicationContext.getBeansWithAnnotation(annoClazz);
    }
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }
}
