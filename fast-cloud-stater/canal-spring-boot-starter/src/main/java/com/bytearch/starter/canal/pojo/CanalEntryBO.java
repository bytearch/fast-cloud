package com.bytearch.starter.canal.pojo;

import com.alibaba.otter.canal.protocol.CanalEntry;

/**
 * @author bytearch
 * @email bytearch@126.com
 * @Date 2021/12/10 17:03
 */
public class CanalEntryBO {
    private String destination;
    private String schemaName;
    private String tableName;
    private CanalEntry.RowData rowData;
    CanalEntry.EventType eventType;

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public CanalEntry.RowData getRowData() {
        return rowData;
    }

    public void setRowData(CanalEntry.RowData rowData) {
        this.rowData = rowData;
    }

    public CanalEntry.EventType getEventType() {
        return eventType;
    }

    public void setEventType(CanalEntry.EventType eventType) {
        this.eventType = eventType;
    }

    public String getSchemaName() {
        return schemaName;
    }

    public void setSchemaName(String schemaName) {
        this.schemaName = schemaName;
    }



    @Override
    public String toString() {
        return "CanalEntryBO{" +
                "schemaName='" + schemaName + '\'' +
                ", tableName='" + tableName + '\'' +
                ", rowData=" + rowData +
                ", eventType=" + eventType +
                '}';
    }
}
