package com.bytearch.cloud.canal.client.dto;

import com.bytearch.starter.canal.annotation.Column;


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
    @Column(column = "booking_date")
    private String bookingDate;

    /**
     * 创建时间
     */
    @Column(column = "create_time")
    private String createTime;

    /**
     * 更新时间
     */
    @Column(column = "update_time")
    private String updateTime;

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
