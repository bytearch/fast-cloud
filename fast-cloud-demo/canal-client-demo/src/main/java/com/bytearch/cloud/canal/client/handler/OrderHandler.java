package com.bytearch.cloud.canal.client.handler;

import com.alibaba.otter.canal.protocol.CanalEntry;
import com.bytearch.cloud.canal.client.dto.OrderInfoDTO;
import com.bytearch.starter.canal.annotation.CanalHandler;
import com.bytearch.starter.canal.handler.Handler;
import com.bytearch.starter.canal.pojo.CanalEntryBO;
import com.bytearch.starter.canal.utils.CanalAnalysisUtil;

@CanalHandler(value = "orderInfoHandler", destination = "example", schema = {"order_center"}, table = {"order_info"}, eventType = {CanalEntry.EventType.UPDATE, CanalEntry.EventType.INSERT,CanalEntry.EventType.DELETE})
public class OrderHandler implements Handler<CanalEntryBO> {

    @Override
    public boolean beforeHandle(CanalEntryBO canalEntryBO) {
        if (canalEntryBO == null) {
            return false;
        }
        return true;
    }

    @Override
    public void handle(CanalEntryBO canalEntryBO) {
        //1. 更新后数据解析
        OrderInfoDTO orderInfoDTO = CanalAnalysisUtil.analysis(OrderInfoDTO.class, canalEntryBO.getRowData().getAfterColumnsList());
        System.out.println("event:" + canalEntryBO.getEventType());
        System.out.println(orderInfoDTO);
        //2. 后续操作 TODO
    }
}
