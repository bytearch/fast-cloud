package com.bytearch.starter.canal.handler;

import com.bytearch.starter.canal.annotation.CanalHandler;
import com.bytearch.starter.canal.pojo.CanalEntryBO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.util.CollectionUtils;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

@Component
public class CanalEntryMessageHandlerChain implements IMessageHandlerChain<CanalEntryBO> {
    protected Logger logger = LoggerFactory.getLogger(getClass());

    private Map<String, Handler<CanalEntryBO>> handlerCP = new HashMap<>();


    @Override
    public void handleMessage(CanalEntryBO canalEntryBO) {
        if (CollectionUtils.isEmpty(handlerCP)) {
            logger.error("handle is empty! ");
        }
        for (Map.Entry<String, Handler<CanalEntryBO>> handlerEntry : handlerCP.entrySet()) {
            Handler<CanalEntryBO> handler = handlerEntry.getValue();
            //添加过滤器
            CanalHandler canalHandler = handler.getClass().getAnnotation(CanalHandler.class);
            if (!filter(canalHandler, canalEntryBO) && handler.beforeHandle(canalEntryBO)) {
                handler.handle(canalEntryBO);
            } else {
                logger.debug("handle not matching, skipped!");
            }
        }
    }

    /**
     * 默认情况下不过滤
     *
     * @param handlerKey
     * @param schemaName
     * @param tableName
     * @param eventType
     * @return
     */
    private boolean filter(CanalHandler canalHandler, CanalEntryBO canalEntryBO) {
        if (canalHandler.destination() != null && !canalHandler.destination().equals(canalEntryBO.getDestination())) {
            return true;
        }
        if (canalHandler.schema().length != 0 && !Arrays.asList(canalHandler.schema()).contains(canalEntryBO.getSchemaName())) {
            return true;
        }
        if (canalHandler.table().length != 0 && !Arrays.asList(canalHandler.table()).contains(canalEntryBO.getTableName())) {
            return true;
        }
        if (canalHandler.eventType().length != 0 && !Arrays.asList(canalHandler.eventType()).contains(canalEntryBO.getEventType())) {
            return true;
        }
        return false;
    }


    @Override
    public void addHandler(Handler<CanalEntryBO> handler) {
        String name = handler.getClass().getName();
        //添加处理器
        handlerCP.putIfAbsent(handler.getClass().getName(), handler);
        logger.info("add handler {}", name);

    }
}
