package com.bytearch.starter.canal.cycle;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * @author bytearch
 * @email bytearch@126.com
 * @Date 2022/1/11 11:36
 */
public class LifeCycleManagerImpl implements ILifeCycleManager {
    protected Logger logger = LoggerFactory.getLogger(getClass());

    private Map<String, LifeCycle> lifeCycleMap = new ConcurrentHashMap<>();

    @Override
    public void start() {
        if (lifeCycleMap.size() == 0) {
            return;
        }
        for (Map.Entry<String, LifeCycle> lifeCycleEntry : lifeCycleMap.entrySet()) {
            if (!lifeCycleEntry.getValue().isStart()) {
                lifeCycleEntry.getValue().start();
                logger.info(" started lifeCycle :{}", lifeCycleEntry.getKey());
            }

        }
    }

    @Override
    public void stop() {
        if (lifeCycleMap.size() == 0) {
            return;
        }
        for (Map.Entry<String, LifeCycle> lifeCycleEntry : lifeCycleMap.entrySet()) {
            if (lifeCycleEntry.getValue().isStart()) {
                lifeCycleEntry.getValue().stop();
                logger.info(" stopped lifeCycle :{}", lifeCycleEntry.getKey());
            }

        }
    }

    @Override
    public void addLifeCycle(String name, LifeCycle lifeCycle) {
        lifeCycleMap.put(name, lifeCycle);
    }
}
