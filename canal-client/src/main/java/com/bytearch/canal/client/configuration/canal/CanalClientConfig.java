package com.bytearch.canal.client.configuration.canal;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * @author iyw
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class CanalClientConfig implements Serializable {

    private static final long serialVersionUID = 304449283345183323L;

    /**
     * 客户端状态: 默认开启
     * enable 开启
     * disable 关闭
     */
    private String status = "enable";

    /**
     * 客户端实现的class
     */
    private String clientClass;

    /**
     * canal-server 的 zkServers
     */
    private String zkServers;

    /**
     * canal-server 的 destination
     */
    private String destination;

    /**
     * 不为空会覆盖server对应destination的filter
     */
    private String filter = "";

    /**
     * 每次getWithoutAck的batchSize
     */
    private int batchSize = 5 * 1024;

    /**
     * 每次getWithoutAck的间隔时间
     */
    private Long getMessageTimeout = 1000L;

    private String username = "";

    private String password = "";

    /**
     * getMessage & handleMessage 的重试次数, 最后一次重试会ack, 之前的重试会rollback
     */
    private Integer retries = 3;

    /**
     * canal-client内部代码 的重试次数
     * 1.0.25 有空指针bug, 会不间断重试, 没有reconnect, 本客户端已处理reconnect
     * 1.1.4 重试间隔ms后 重试+reconnect
     */
    private int retryTimes = 3;

    /**
     * getMessage & handleMessage 的重试间隔ms
     * canal-client内部代码 的重试间隔ms
     */
    private int retryInterval = 3000;

    /**
     * 如果<=0, 则一直阻塞等待subscribe, 否则x秒后强制关闭
     */
    private int shutdownTimeout = 10;

    /**
     * logName alias From logger.name of logback-spring.xml
     * NULL or empty = this.getClass()
     */
    private String logName;

    /**
     * ####### MQ #######
     */
    private String namesrvAddr;

    /**
     * 默认发送topic名称
     * 具体以配置中心位置, 配置中心null或空=该默认值
     */
    private String topic;

    private Integer retryTimesWhenSendFailed = 3;
}