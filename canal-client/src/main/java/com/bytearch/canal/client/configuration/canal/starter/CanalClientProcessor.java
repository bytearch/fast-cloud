package com.bytearch.canal.client.configuration.canal.starter;

import com.alibaba.fastjson.JSON;
import com.bytearch.canal.client.configuration.canal.CanalClientConfig;
import com.bytearch.canal.client.configuration.canal.CanalClusterToMQBase;
import com.bytearch.canal.client.util.BeanFactoryPropertyUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.config.BeanFactoryPostProcessor;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.support.BeanDefinitionBuilder;
import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.context.annotation.Configuration;

import java.util.HashSet;
import java.util.Set;

@Slf4j
@Configuration
public class CanalClientProcessor implements BeanFactoryPostProcessor {

    @Override
    public void postProcessBeanFactory(ConfigurableListableBeanFactory beanFactory) throws BeansException {
        DefaultListableBeanFactory defaultListableBeanFactory = (DefaultListableBeanFactory) beanFactory;

        CanalClientProperty config = null;
        try {
            config = BeanFactoryPropertyUtil.getProperty(CanalClientProperty.class, defaultListableBeanFactory, "canal");
        } catch (Exception e) {
            throw new RuntimeException("CanalClientProperty error.");
        }

        if (config == null || config.getClients() == null) {
            log.warn("CanalClientProperty can not exist.");
            return;
        }

        if (config.getClients().size() == 0) {
            log.warn("CanalClientProperty is empty.");
            return;
        }

        log.info("CanalClientProperty: {}", JSON.toJSONString(config));

        Set<String> classSet = new HashSet<>();

        for (CanalClientConfig conf : config.getClients()) {
            if (classSet.contains(conf.getClientClass())) {
                throw new RuntimeException("CanalClientConfig found duplicate clientClass: " + conf.getClientClass());
            }
            classSet.add(conf.getClientClass());

            try {
                if (!Class.forName(conf.getClientClass()).getSuperclass().equals(CanalClusterToMQBase.class)) {
                    throw new RuntimeException("CanalClientConfig clientClass must be extends [CanalClusterToMQBase].");
                }
            } catch (ClassNotFoundException e) {
                throw new RuntimeException("CanalClientConfig clientClass not found: " + conf.getClientClass());
            }

            registerBean(defaultListableBeanFactory, conf);
        }
    }

    private void registerBean(DefaultListableBeanFactory defaultListableBeanFactory, CanalClientConfig config) {
        BeanDefinitionBuilder builder = BeanDefinitionBuilder.genericBeanDefinition(config.getClientClass());
        builder.setScope(BeanDefinition.SCOPE_SINGLETON);
        builder.addConstructorArgValue(config);
        builder.setDestroyMethodName("stop");
        builder.setLazyInit(false);
        defaultListableBeanFactory.registerBeanDefinition(config.getClientClass(), builder.getBeanDefinition());
    }

}
