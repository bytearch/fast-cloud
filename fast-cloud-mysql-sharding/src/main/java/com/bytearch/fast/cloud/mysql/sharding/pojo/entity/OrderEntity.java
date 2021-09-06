package com.bytearch.fast.cloud.mysql.sharding.pojo.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.jfaster.mango.annotation.ID;

import java.util.Date;

@Data
public class OrderEntity {
    private static final long serialVersionUID = -3732851445371822449L;

    /**
     * 订单ID
     */
    @ID
    private Long orderId;
    /**
     * 用户ID
     */
    private Integer userId;

    /**
     * 订单状态
     */
    private Integer status;

    /**
     * 预约用车时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date bookingDate;

    /**
     * 创建
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date createTime;

    /**
     * 更新时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date updateTime;
}
