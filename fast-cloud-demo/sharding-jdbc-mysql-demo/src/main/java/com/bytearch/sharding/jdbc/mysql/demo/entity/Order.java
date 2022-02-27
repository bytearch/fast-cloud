package com.bytearch.sharding.jdbc.mysql.demo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

@Data
public class Order {
    private static final long serialVersionUID = -3732851445371822449L;

    /**
     * 订单ID
     */
    //@TableId(type = IdType.ID_WORKER) //指定主键
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
