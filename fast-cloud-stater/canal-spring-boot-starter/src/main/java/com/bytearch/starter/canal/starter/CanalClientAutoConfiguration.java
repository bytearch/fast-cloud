package com.bytearch.starter.canal.starter;

import com.bytearch.starter.canal.annotation.CanalHandler;
import com.bytearch.starter.canal.config.CanalConfig;
import com.bytearch.starter.canal.config.CanalProperties;
import com.bytearch.starter.canal.cycle.*;
import com.bytearch.starter.canal.enums.EnumMode;
import com.bytearch.starter.canal.handler.CanalEntryMessageHandlerChain;
import com.bytearch.starter.canal.handler.Handler;
import com.bytearch.starter.canal.handler.IMessageHandlerChain;
import com.bytearch.starter.canal.pojo.CanalEntryBO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.condition.ConditionalOnClass;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

import java.util.Map;

/**
 * @author bytearch
 * @email bytearch@126.com
 * @Date 2022/1/6 16:20
 */
@Configuration
@ConditionalOnClass({CanalConfig.class, BeanUtil.class})
@Import({CanalConfig.class, BeanUtil.class})
public class CanalClientAutoConfiguration {
    protected Logger LOGGER = LoggerFactory.getLogger(getClass());
    @Autowired
    CanalConfig canalConfig;
    /**
     * 处理器
     *
     * @return
     */
    @Bean
    @ConditionalOnMissingBean(IMessageHandlerChain.class)
    public IMessageHandlerChain messageHandlerChain() {
        CanalEntryMessageHandlerChain messageHandlerChain = new CanalEntryMessageHandlerChain();
        Map<String, Object> handleMap = BeanUtil.getBeansWithAnnotaion(CanalHandler.class);
        for (Map.Entry<String, Object> handleEntrySet : handleMap.entrySet()) {
            Object handler = handleEntrySet.getValue();
            if (handler instanceof Handler) {
                messageHandlerChain.addHandler((Handler<CanalEntryBO>) handler);
            }
        }
        return messageHandlerChain;
    }

    @Bean(initMethod = "start", destroyMethod = "stop")
    @ConditionalOnMissingBean(ILifeCycleManager.class)
    public ILifeCycleManager lifeCycleManager(IMessageHandlerChain messageHandlerChain) {
        ILifeCycleManager lifeCycleManager = new LifeCycleManagerImpl();
        Map<String, CanalProperties> instances = canalConfig.getClients();
        for (Map.Entry<String, CanalProperties> canalInstanceEntry : instances.entrySet()) {
            CanalProperties config = canalInstanceEntry.getValue();
            if (!config.isEnable()) {
                LOGGER.warn("canal client :{} enable: false", canalInstanceEntry.getKey());
                continue;
            }
            LifeCycle lifeCycle = LifeCycleFactory.buildLifeCycle(config, messageHandlerChain);
            if (lifeCycle == null) {
                LOGGER.error("life cycle build error!");
            }
            lifeCycleManager.addLifeCycle(lifeCycle.getClass().getName() + "#" + canalInstanceEntry.getKey(), lifeCycle);
        }
        return lifeCycleManager;
    }
}
