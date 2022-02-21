package com.bytearch.fastcloud.core.idgenerator.impl;

import com.bytearch.fastcloud.core.idgenerator.IdGenerator;
import com.bytearch.fastcloud.core.idgenerator.util.IpUtil;

import java.util.HashMap;
import java.util.function.LongSupplier;

/**
 * 订单号生成器
 */
public class IDGeneratorLocal implements IdGenerator {

    /**
     * 毫秒级开始时间 2020-01-01   时间差 = 当前时间 - MillisecondStartTime
     */
    private static final long MILLISECOND_START_TIME = 1577808000000L;

    /**
     * 时间差所占位数
     */
    private final long timeBits = 39L;
    /**
     * 机器Id所占位数
     **/
    private final static long WORKER_ID_BITS = 8L;

    /**
     * 用户指定编号(比如库号)位数
     */
    private final static long EXTRA_BITS = 8L;

    /**
     * 唯一序列位数
     */
    private static final long SN_BITS = 8L;

    private static final long MAX_SN = ~(-1L << SN_BITS);

    /**
     * 最多的机器id数
     */
    private final static long MAX_WORKER_ID = ~(-1L << WORKER_ID_BITS);

    private final static long MAX_EXTRA_ID = ~(-1L << EXTRA_BITS);

    /**
     * 毫秒内序列(0~4095)
     */
    private static long sequence = 0L;

    /**
     * 上次生成ID的时间截
     */
    private static long lastTimestamp = -1L;

    private final LongSupplier workerIdSupplier;

    private static int ipSuffix = 0;

    static {
        //获取ip后三位
        ipSuffix = IpUtil.getIpSuffix();
    }


    /**
     * 实例化一个ID生成器, workerId=IP后三位
     */
    public IDGeneratorLocal() {
        this.workerIdSupplier = () -> ipSuffix;
    }

    /**
     * 实例化一个ID生成器, workerId=自定义
     */
    public IDGeneratorLocal(LongSupplier workerIdSupplier) {
        this.workerIdSupplier = workerIdSupplier;
    }


    @Override
    public long generate() {
        return nextId(workerIdSupplier.getAsLong(), 0L);
    }

    @Override
    public long generate(long extraData) {
        return nextId(workerIdSupplier.getAsLong(), extraData);
    }

    public long nextId(long workerId, long extraId) {
        if (workerId > MAX_WORKER_ID || workerId < 0) {
            throw new IllegalArgumentException(String.format("workerId:%d invalid,  Its range is 0 to %d", workerId, MAX_WORKER_ID));
        }
        if (extraId > MAX_EXTRA_ID || extraId < 0) {
            throw new IllegalArgumentException(String.format("extraId:%d invalid,  Its range is 0 to %d", extraId, MAX_EXTRA_ID));
        }
        synchronized (IDGeneratorLocal.class) {
            long timestamp = timeGen();
            //如果当前时间小于上一次ID生成的时间戳，说明系统时钟回退过这个时候应当抛出异常
            if (timestamp < lastTimestamp) {
                long diffTime = lastTimestamp - timestamp;
                if (diffTime <= 500) {
                    try {
                        Thread.sleep(diffTime);
                    } catch (InterruptedException ignore) {
                    }
                    // 重置时间值
                    timestamp = System.currentTimeMillis();
                } else {
                    throw new RuntimeException(String.format("clock moved backwards, Refusing to generate id for %d milliseconds", lastTimestamp - timestamp));
                }
            }
            if (lastTimestamp == timestamp) {
                sequence = (sequence + 1) & MAX_SN;
                if (sequence == 0) {
                    timestamp = nextMillis(lastTimestamp);
                }
            } else {
                sequence = 0L;
            }
            lastTimestamp = timestamp;
            return (timestamp - MILLISECOND_START_TIME) << (SN_BITS + EXTRA_BITS + WORKER_ID_BITS)
                    | workerId << (SN_BITS + EXTRA_BITS)
                    | extraId << SN_BITS
                    | sequence;
        }
    }

    @Override
    public int getWorkerID() {
        return ipSuffix;
    }

    @Override
    public HashMap<Object, Object> getOnlineWorkerIDs() {
        return null;
    }

    @Override
    public void init() throws Exception {

    }

    @Override
    public void close() {
    }

    @Override
    public long decodeWorkerIdFromId(long id) {
        return (id >> (SN_BITS + EXTRA_BITS)) & MAX_WORKER_ID;
    }

    @Override
    public long decodeExtraDataFromId(long id) {
        return (id >> SN_BITS) & MAX_EXTRA_ID;
    }

    @Override
    public long decodeCreateDateFromID(long id) {
        return (id >> (SN_BITS + EXTRA_BITS + WORKER_ID_BITS)) + MILLISECOND_START_TIME;
    }

    /**
     * 返回以毫秒为单位的当前时间
     *
     * @return 当前时间(毫秒)
     */
    private static long timeGen() {
        return System.currentTimeMillis();
    }

    /**
     * 阻塞到下一个毫秒，直到获得新的时间戳
     *
     * @param lastTimestamp 上次生成ID的时间截
     * @return 当前时间戳
     */
    private static long nextMillis(long lastTimestamp) {
        long timestamp = timeGen();
        while (timestamp <= lastTimestamp) {
            timestamp = timeGen();
        }
        return timestamp;
    }
}
