package com.bytearch.cloud.canal.client.dto;

import com.bytearch.starter.canal.annotation.Column;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class OrderInfoDTO {
    /**
     * 订单ID
     */
    @Column(column = "order_id")
    private Long orderId;
    /**
     * 用户ID
     */
    @Column(column = "user_id")
    private Integer userId;

    /**
     * 订单状态
     */
    @Column(column = "status")
    private Integer status;

    /**
     * 预约用车时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    @Column(column = "booking_date")
    private Date bookingDate;

    /**
     * 创建
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    @Column(column = "create_time")
    private Date createTime;

    /**
     * 更新时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    @Column(column = "update_time")
    private Date updateTime;

    @Override
    public String toString() {
        return "OrderInfoDTO{" +
                "orderId=" + orderId +
                ", userId=" + userId +
                ", status=" + status +
                ", bookingDate=" + bookingDate +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }
}
