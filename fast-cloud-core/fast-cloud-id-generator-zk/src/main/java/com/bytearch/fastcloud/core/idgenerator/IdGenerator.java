package com.bytearch.fastcloud.core.idgenerator;

import java.util.Date;
import java.util.HashMap;

/**
 * 分布式ID生成器
 */
public interface IdGenerator {
    /**
     * 生成并返回一个分布式ID
     * @return
     */
    long generate();

    /**
     * 生成一个包含自定义数据extraData 的分布式ID
     * @param extraData
     * @return
     */
    long generate(long extraData);

    /**
     * 获取实例ID
     * @return
     */
    int getWorkerID();

    /**
     * 获取在线的 workerID 映射
     */
    HashMap<Object, Object> getOnlineWorkerIDs();

    /**
     * 初始化分布式id生成器
     */
    void init() throws Exception;

    /**
     * 关闭分布式id生成器
     */
    void close();

    /**
     * 从id反解出 workerID
     */
    long decodeWorkerIdFromId(final long id);

    /**
     * 从id反解出 extraData
     */
    long decodeExtraDataFromId(final long id);

    /**
     * 从id反解出 创建时间时间戳
     */
    long decodeCreateDateFromID(final long id);
}
