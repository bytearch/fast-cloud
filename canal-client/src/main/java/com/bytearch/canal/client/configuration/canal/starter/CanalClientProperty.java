package com.bytearch.canal.client.configuration.canal.starter;

import com.bytearch.canal.client.configuration.canal.CanalClientConfig;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class CanalClientProperty implements Serializable {

    private static final long serialVersionUID = 8359290984498400231L;

    /**
     * rmq消费者
     */
    private List<CanalClientConfig> clients;
}