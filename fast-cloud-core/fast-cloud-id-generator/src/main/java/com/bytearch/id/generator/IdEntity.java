package com.bytearch.id.generator;

/**
 * @author yarw
 */
public class IdEntity {
    private long createTime;
    private long workerId;
    private long extraId;
    private long sequenceId;
    
    public void setCreateTime(long createTime) {
        this.createTime = createTime;
    }


    public void setWorkerId(long workerId) {
        this.workerId = workerId;
    }


    public void setExtraId(long extraId) {
        this.extraId = extraId;
    }


    public void setSequenceId(long sequenceId) {
        this.sequenceId = sequenceId;
    }

    public long getCreateTime() {
        return createTime;
    }

    public long getWorkerId() {
        return workerId;
    }

    public long getExtraId() {
        return extraId;
    }

    public long getSequenceId() {
        return sequenceId;
    }

    @Override
    public String toString() {
        return "IdEntity{" +
                "createTime=" + createTime +
                ", workerId=" + workerId +
                ", extraId=" + extraId +
                ", sequenceId=" + sequenceId +
                '}';
    }
}