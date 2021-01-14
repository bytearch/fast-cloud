package com.bytearch.canal.client.pojo;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;
import org.jfaster.mango.annotation.Column;
import org.jfaster.mango.annotation.ID;
import org.springframework.beans.BeansException;
import org.springframework.beans.FatalBeanException;
import org.springframework.util.Assert;
import org.springframework.util.ClassUtils;

import java.beans.PropertyDescriptor;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import static org.springframework.beans.BeanUtils.getPropertyDescriptor;
import static org.springframework.beans.BeanUtils.getPropertyDescriptors;

@Data
public class CarFactOrderEntity implements Serializable {
    private static final long serialVersionUID = 4251825596600610537L;

    @ID
    @Column("order_id")
    @JSONField(name = "order_id")
    private Long orderId;

    @Column("order_no")
    @JSONField(name = "order_no")
    private String orderNo;

    @Column("type")
    @JSONField(name = "type")
    private Integer type;

    @Column("push_driver_type")
    @JSONField(name = "push_driver_type")
    private Integer pushDriverType;

    @Column("order_type")
    @JSONField(name = "order_type")
    private Integer orderType;

    @Column("booking_user_id")
    @JSONField(name = "booking_user_id")
    private Integer bookingUserId;

    @Column("booking_date")
    @JSONField(name = "booking_date")
    private Date bookingDate;

    @Column("rider_name")
    @JSONField(name = "rider_name")
    private String riderName;

    @Column("rider_phone")
    @JSONField(name = "rider_phone")
    private String riderPhone;

    @Column("booking_start_addr")
    @JSONField(name = "booking_start_addr")
    private String bookingStartAddr;

    @Column("booking_start_point")
    @JSONField(name = "booking_start_point")
    private String bookingStartPoint;

    @Column("booking_end_addr")
    @JSONField(name = "booking_end_addr")
    private String bookingEndAddr;

    @Column("booking_end_point")
    @JSONField(name = "booking_end_point")
    private String bookingEndPoint;

    @Column("fact_start_addr")
    @JSONField(name = "fact_start_addr")
    private String factStartAddr;

    @Column("fact_start_point")
    @JSONField(name = "fact_start_point")
    private String factStartPoint;

    @Column("fact_end_addr")
    @JSONField(name = "fact_end_addr")
    private String factEndAddr;

    @Column("fact_end_point")
    @JSONField(name = "fact_end_point")
    private String factEndPoint;

    @Column("city_id")
    @JSONField(name = "city_id")
    private Integer cityId;

    @Column("service_type_id")
    @JSONField(name = "service_type_id")
    private Integer serviceTypeId;

    @Column("car_group_id")
    @JSONField(name = "car_group_id")
    private Integer carGroupId;

    @Column("driver_id")
    @JSONField(name = "driver_id")
    private Integer driverId;

    @Column("license_plates")
    @JSONField(name = "license_plates")
    private String licensePlates;

    @Column("airline_no")
    @JSONField(name = "airline_no")
    private String airlineNo;

    @Column("airline_status")
    @JSONField(name = "airline_status")
    private Integer airlineStatus;

    @Column("airline_plan_date")
    @JSONField(name = "airline_plan_date")
    private Date airlinePlanDate;

    @Column("airline_arr_date")
    @JSONField(name = "airline_arr_date")
    private Date airlineArrDate;

    @Column("airline_dep_code")
    @JSONField(name = "airline_dep_code")
    private String airlineDepCode;

    @Column("airline_arr_code")
    @JSONField(name = "airline_arr_code")
    private String airlineArrCode;

    @Column("channels_num")
    @JSONField(name = "channels_num")
    private String channelsNum;

    @Column("receive_SMS")
    @JSONField(name = "receive_SMS")
    private Integer receiveSMS;

    @Column("estimated_Amount")
    @JSONField(name = "estimated_Amount")
    private Double estimatedAmount;

    @Column("airport_id")
    @JSONField(name = "airport_id")
    private Integer airportId;

    @Column("status")
    @JSONField(name = "status")
    private Integer status;

    @Column("create_by")
    @JSONField(name = "create_by")
    private Integer createBy;

    @Column("update_by")
    @JSONField(name = "update_by")
    private Integer updateBy;

    @Column("create_date")
    @JSONField(name = "create_date")
    private Date createDate;

    @Column("update_date")
    @JSONField(name = "update_date")
    private Date updateDate;

    @Column("memo")
    @JSONField(name = "memo")
    private String memo;

    @Column("fact_date")
    @JSONField(name = "fact_date")
    private Date factDate;

    @Column("booking_groupids")
    @JSONField(name = "booking_groupids")
    private String bookingGroupIds;

    @Column("fact_driver_id")
    @JSONField(name = "fact_driver_id")
    private Integer factDriverId;

    @Column("fact_end_date")
    @JSONField(name = "fact_end_date")
    private Date factEndDate;

    @Column("imei")
    @JSONField(name = "imei")
    private String imei;

    @Column("version")
    @JSONField(name = "version")
    private String version;

    @Column("mobel_version")
    @JSONField(name = "mobel_version")
    private String mobelVersion;

    @Column("sys_version")
    @JSONField(name = "sys_version")
    private String sysVersion;

    @Column("platform")
    @JSONField(name = "platform")
    private String platform;

    @Column("pay_flag")
    @JSONField(name = "pay_flag")
    private Integer payFlag;

    @Column("cancelorder_penalty")
    @JSONField(name = "cancelorder_penalty")
    private Double cancelorderPenalty;

    @Column("chartered_id")
    @JSONField(name = "chartered_id")
    private Integer charteredId;

    @Column("chartered_order_no")
    @JSONField(name = "chartered_order_no")
    private String charteredOrderNo;

    @Column("is_order_others")
    @JSONField(name = "is_order_others")
    private Integer isOrderOthers;

    @Column("doorman_pay_method")
    @JSONField(name = "doorman_pay_method")
    private Integer doormanPayMethod;

    @Column("selected_pay_flag")
    @JSONField(name = "selected_pay_flag")
    private Integer selectedPayFlag;

    @Column("business_id")
    @JSONField(name = "business_id")
    private Integer businessId;

    @Column("go_home_status")
    @JSONField(name = "go_home_status")
    private Integer goHomeStatus;

    @Column("auto_level_up")
    @JSONField(name = "auto_level_up")
    private Integer autoLevelUp;

    @Column("booking_driver_id")
    @JSONField(name = "booking_driver_id")
    private Integer bookingDriverId;

    @Column("is_other_drivers")
    @JSONField(name = "is_other_drivers")
    private Integer isOtherDrivers;

    @Column("booking_current_addr")
    @JSONField(name = "booking_current_addr")
    private String bookingCurrentAddr;

    @Column("booking_current_point")
    @JSONField(name = "booking_current_point")
    private String bookingCurrentPoint;

    @Column("booking_user_phone")
    @JSONField(name = "booking_user_phone")
    private String bookingUserPhone;

    @Column("buyout_flag")
    @JSONField(name = "buyout_flag")
    private Integer buyoutFlag;

    @Column("buyout_price")
    @JSONField(name = "buyout_price")
    private Double buyoutPrice;

    @Column("booking_id_number")
    @JSONField(name = "booking_id_number")
    private String bookingIdNumber;

    @Column("estimated_id")
    @JSONField(name = "estimated_id")
    private String estimatedId;

    @Column("agent_id")
    @JSONField(name = "agent_id")
    private Integer agentId = 0;

    @Column("flag")
    @JSONField(name = "flag")
    private Long flag = 0L;

    @Column("order_source")
    @JSONField(name = "order_source")
    private String orderSource;

    public static void copyNotNullProperties(Object source, Object target, String... ignoreProperties) throws BeansException {

        Assert.notNull(source, "Source must not be null");
        Assert.notNull(target, "Target must not be null");

        Class<?> actualEditable = target.getClass();
        PropertyDescriptor[] targetPds = getPropertyDescriptors(actualEditable);
        List<String> ignoreList = (ignoreProperties != null ? Arrays.asList(ignoreProperties) : null);

        for (PropertyDescriptor targetPd : targetPds) {
            Method writeMethod = targetPd.getWriteMethod();
            if (writeMethod != null && (ignoreList == null || !ignoreList.contains(targetPd.getName()))) {
                PropertyDescriptor sourcePd = getPropertyDescriptor(source.getClass(), targetPd.getName());
                if (sourcePd != null) {
                    Method readMethod = sourcePd.getReadMethod();
                    if (readMethod != null &&
                            ClassUtils.isAssignable(writeMethod.getParameterTypes()[0], readMethod.getReturnType())) {
                        try {
                            if (!Modifier.isPublic(readMethod.getDeclaringClass().getModifiers())) {
                                readMethod.setAccessible(true);
                            }
                            Object value = readMethod.invoke(source);
                            if (!Modifier.isPublic(writeMethod.getDeclaringClass().getModifiers())) {
                                writeMethod.setAccessible(true);
                            }

                            if (value instanceof Long) {
                                if ((Long) value > 0L) {
                                    writeMethod.invoke(target, value);
                                }
                            } else if (value instanceof Integer) {
                                if ((Integer) value > 0) {
                                    writeMethod.invoke(target, value);
                                }
                            } else if (value != null) {
                                writeMethod.invoke(target, value);
                            }

                        } catch (Throwable ex) {
                            throw new FatalBeanException(
                                    "Could not copy property '" + targetPd.getName() + "' from source to target", ex);
                        }
                    }
                }
            }
        }
    }

}
