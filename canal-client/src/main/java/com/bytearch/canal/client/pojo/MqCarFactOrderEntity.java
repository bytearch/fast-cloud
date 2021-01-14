package com.bytearch.canal.client.pojo;

import com.bytearch.canal.client.util.DateUtils;
import com.google.common.base.Strings;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

@Data
public class MqCarFactOrderEntity implements Serializable {
    public static final String CATEGORY_INSERT = "INSERT";
    public static final String CATEGORY_UPDATE = "UPDATE";
    public static final String AFFECTED_COLS_ALL = "order_id,order_no,type,push_driver_type,order_type,booking_user_id,booking_date,rider_name,rider_phone,booking_start_addr,booking_start_point,booking_end_addr,booking_end_point,fact_start_addr,fact_start_point,fact_end_addr,fact_end_point,city_id,service_type_id,car_group_id,driver_id,license_plates,airline_no,airline_status,airline_plan_date,airline_arr_date,airline_dep_code,airline_arr_code,channels_num,receive_SMS,estimated_Amount,airport_id,status,create_by,update_by,create_date,update_date,memo,fact_date,booking_groupids,fact_driver_id,fact_end_date,imei,version,mobel_version,sys_version,platform,pay_flag,cancelorder_penalty,chartered_id,chartered_order_no,is_order_others,doorman_pay_method,selected_pay_flag,business_id,go_home_status,auto_level_up,booking_driver_id,is_other_drivers,booking_current_addr,booking_current_point,booking_user_phone,buyout_flag,buyout_price,booking_id_number,estimated_id,agent_id";

    private static final long serialVersionUID = -3730606553307614325L;
    private String eventCategory;

    private String msgBornDate;
    private String msgBornIp;
    private String affectedCols;

    private String agentIdStr;
    private String airlineArrCode;
    private String airlineArrDateStr;
    private String airlineDepCode;
    private String airlineNo;
    private String airlinePlanDateStr;
    private String airlineStatus;
    private String airportIdStr;
    private String autoLevelUp;
    private String bookingCurrentAddr;
    private String bookingCurrentPoint;
    private String bookingDateStr;
    private String bookingDriverId;
    private String bookingEndAddr;
    private String bookingEndPoint;
    private String bookingGroupids;
    private String bookingIdNumber;
    private String bookingStartAddr;
    private String bookingStartPoint;
    private String bookingUserId;
    private String bookingUserPhone;
    private String business_id;
    private String buyoutFlag;
    private String buyoutPrice;
    private String cancelorderPenalty;
    private String carGroupId;
    private String channelsNum;
    private String charteredId;
    private String charteredOrderNo;
    private String cityId;
    private String createBy;
    private String createDateStr;
    private String doormanPayMethod;
    private String driverId;
    private String estimatedAmount;
    private String estimatedId;
    private String factDateStr;
    private String factDriverId;
    private String factEndAddr;
    private String factEndDateStr;
    private String factEndPoint;
    private String factStartAddr;
    private String factStartPoint;
    private String goHomeStatus;
    private String imei;
    private String isOrderOthers;
    private String isOtherDrivers;
    private String licensePlates;
    private String memo;
    private String mobelVersion;
    private String orderIdStr;
    private String orderNo;
    private String orderType;
    private String payFlag;
    private String platform;
    private String pushDriverType;
    private String receiveSms;
    private String riderName;
    private String riderPhone;
    private String selectedPayFlag;
    private String serviceTypeId;
    private String status;
    private String sysVersion;
    private String type;
    private String updateBy;
    private String updateDateStr;
    private String version;
//    private String flag;
//    private String orderSource;

    public static MqCarFactOrderEntity buildFromEntity(
            CarFactOrderEntity carFactOrderEntity,
            Date msgBornDate,
            String ip,
            String eventCategory,
            Object affectedCols
    ) {
        MqCarFactOrderEntity entity = new MqCarFactOrderEntity();
        if (msgBornDate == null) {
            msgBornDate = new Date();
        }
        entity.setMsgBornDate(DateUtils.getFormat("yyyy-MM-dd HH:mm:ss.SSS").format(msgBornDate));
        entity.setMsgBornIp(ip);
        entity.setEventCategory(eventCategory);

        if ("INSERT".equals(eventCategory)) {
            entity.affectedCols = AFFECTED_COLS_ALL;
        } else if ("UPDATE".equals(eventCategory)) {
            if (affectedCols != null) {
                if (affectedCols instanceof List) {
                    entity.affectedCols = ((List<String>) affectedCols).stream().filter(string -> !Strings.isNullOrEmpty(string)).collect(Collectors.joining(","));
                }
                if (affectedCols instanceof Map) {
                    entity.affectedCols = ((Set<String>) ((Map) affectedCols).keySet()).stream().filter(string -> !Strings.isNullOrEmpty(string)).collect(Collectors.joining(","));
                }
            }
        }

        if (carFactOrderEntity.getAirlineArrCode() != null) {
            entity.setAirlineArrCode(carFactOrderEntity.getAirlineArrCode());
        }

        if (carFactOrderEntity.getAirlineArrDate() != null) {
            entity.setAirlineArrDateStr(DateUtils.getFormat(DateUtils.TIME_PATTERN).format(carFactOrderEntity.getAirlineArrDate()));
        }

        if (carFactOrderEntity.getAirlineDepCode() != null) {
            entity.setAirlineDepCode(carFactOrderEntity.getAirlineDepCode());
        }

        if (carFactOrderEntity.getAirlineNo() != null) {
            entity.setAirlineNo(carFactOrderEntity.getAirlineNo());
        }

        if (carFactOrderEntity.getAirlinePlanDate() != null) {
            entity.setAirlinePlanDateStr(DateUtils.getFormat(DateUtils.TIME_PATTERN).format(carFactOrderEntity.getAirlinePlanDate()));
        }

        if (carFactOrderEntity.getAirlineStatus() != null) {
            entity.setAirlineStatus(String.valueOf(carFactOrderEntity.getAirlineStatus()));
        }

        if (carFactOrderEntity.getAirportId() != null) {
            entity.setAirportIdStr(String.valueOf(carFactOrderEntity.getAirportId()));
        }

        if (carFactOrderEntity.getBookingCurrentAddr() != null) {
            entity.setBookingCurrentAddr(carFactOrderEntity.getBookingCurrentAddr());
        }

        if (carFactOrderEntity.getBookingCurrentPoint() != null) {
            entity.setBookingCurrentPoint(carFactOrderEntity.getBookingCurrentPoint());
        }

        if (carFactOrderEntity.getBookingDate() != null) {
            entity.setBookingDateStr(DateUtils.getFormat(DateUtils.TIME_PATTERN).format(carFactOrderEntity.getBookingDate()));
        }

        if (carFactOrderEntity.getBookingDriverId() != null) {
            entity.setBookingDriverId(String.valueOf(carFactOrderEntity.getBookingDriverId()));
        }

        if (carFactOrderEntity.getBookingEndAddr() != null) {
            entity.setBookingEndAddr(carFactOrderEntity.getBookingEndAddr());
        }

        if (carFactOrderEntity.getBookingEndPoint() != null) {
            entity.setBookingEndPoint(carFactOrderEntity.getBookingEndPoint());
        }

        if (carFactOrderEntity.getBookingGroupIds() != null) {
            entity.setBookingGroupids(carFactOrderEntity.getBookingGroupIds());
        }

        if (carFactOrderEntity.getBookingIdNumber() != null) {
            entity.setBookingIdNumber(carFactOrderEntity.getBookingIdNumber());
        }

        if (carFactOrderEntity.getBookingStartAddr() != null) {
            entity.setBookingStartAddr(carFactOrderEntity.getBookingStartAddr());
        }

        if (carFactOrderEntity.getBookingStartPoint() != null) {
            entity.setBookingStartPoint(carFactOrderEntity.getBookingStartPoint());
        }

        if (carFactOrderEntity.getBookingUserId() != null) {
            entity.setBookingUserId(String.valueOf(carFactOrderEntity.getBookingUserId()));
        }

        if (carFactOrderEntity.getBookingUserPhone() != null) {
            entity.setBookingUserPhone(carFactOrderEntity.getBookingUserPhone());
        }

        if (carFactOrderEntity.getBusinessId() != null) {
            entity.setBusiness_id(String.valueOf(carFactOrderEntity.getBusinessId()));
        }

        if (carFactOrderEntity.getBuyoutFlag() != null) {
            entity.setBuyoutFlag(String.valueOf(carFactOrderEntity.getBuyoutFlag()));
        }

        if (carFactOrderEntity.getCancelorderPenalty() != null) {
            entity.setCancelorderPenalty(String.valueOf(carFactOrderEntity.getCancelorderPenalty()));
        }

        if (carFactOrderEntity.getCarGroupId() != null) {
            entity.setCarGroupId(String.valueOf(carFactOrderEntity.getCarGroupId()));
        }

        if (carFactOrderEntity.getChannelsNum() != null) {
            entity.setChannelsNum(carFactOrderEntity.getChannelsNum());
        }

        if (carFactOrderEntity.getCharteredId() != null) {
            entity.setCharteredId(String.valueOf(carFactOrderEntity.getCharteredId()));
        }

        if (carFactOrderEntity.getCharteredOrderNo() != null) {
            entity.setCharteredOrderNo(carFactOrderEntity.getCharteredOrderNo());
        }

        if (carFactOrderEntity.getCityId() != null) {
            entity.setCityId(String.valueOf(carFactOrderEntity.getCityId()));
        }

        if (carFactOrderEntity.getCreateBy() != null) {
            entity.setCreateBy(String.valueOf(carFactOrderEntity.getCreateBy()));
        }

        if (carFactOrderEntity.getCreateDate() != null) {
            entity.setCreateDateStr(DateUtils.getFormat(DateUtils.TIME_PATTERN).format(carFactOrderEntity.getCreateDate()));
        }

        if (carFactOrderEntity.getDoormanPayMethod() != null) {
            entity.setDoormanPayMethod(String.valueOf(carFactOrderEntity.getDoormanPayMethod()));
        }

        if (carFactOrderEntity.getDriverId() != null) {
            entity.setDriverId(String.valueOf(carFactOrderEntity.getDriverId()));
        }

        if (carFactOrderEntity.getEstimatedId() != null) {
            entity.setEstimatedId(carFactOrderEntity.getEstimatedId());
        }

        if (carFactOrderEntity.getFactDate() != null) {
            entity.setFactDateStr(DateUtils.getFormat(DateUtils.TIME_PATTERN).format(carFactOrderEntity.getFactDate()));
        }

        if (carFactOrderEntity.getFactDriverId() != null) {
            entity.setFactDriverId(String.valueOf(carFactOrderEntity.getFactDriverId()));
        }

        if (carFactOrderEntity.getFactEndAddr() != null) {
            entity.setFactEndAddr(carFactOrderEntity.getFactEndAddr());
        }

        if (carFactOrderEntity.getFactEndDate() != null) {
            entity.setFactEndDateStr(DateUtils.getFormat(DateUtils.TIME_PATTERN).format(carFactOrderEntity.getFactEndDate()));
        }

        if (carFactOrderEntity.getFactEndPoint() != null) {
            entity.setFactEndPoint(carFactOrderEntity.getFactEndPoint());
        }

        if (carFactOrderEntity.getFactStartAddr() != null) {
            entity.setFactStartAddr(carFactOrderEntity.getFactStartAddr());
        }

        if (carFactOrderEntity.getFactStartPoint() != null) {
            entity.setFactStartPoint(carFactOrderEntity.getFactStartPoint());
        }

        if (carFactOrderEntity.getImei() != null) {
            entity.setImei(carFactOrderEntity.getImei());
        }

        if (carFactOrderEntity.getIsOtherDrivers() != null) {
            entity.setIsOtherDrivers(String.valueOf(carFactOrderEntity.getIsOtherDrivers()));
        }

        if (carFactOrderEntity.getLicensePlates() != null) {
            entity.setLicensePlates(carFactOrderEntity.getLicensePlates());
        }

        if (carFactOrderEntity.getMemo() != null) {
            entity.setMemo(carFactOrderEntity.getMemo());
        }

        if (carFactOrderEntity.getMobelVersion() != null) {
            entity.setMobelVersion(carFactOrderEntity.getMobelVersion());
        }

        if (carFactOrderEntity.getOrderId() != null) {
            entity.setOrderIdStr(String.valueOf(carFactOrderEntity.getOrderId()));
        }

        if (carFactOrderEntity.getOrderNo() != null) {
            entity.setOrderNo(carFactOrderEntity.getOrderNo());
        }

        if (carFactOrderEntity.getOrderType() != null) {
            entity.setOrderType(String.valueOf(carFactOrderEntity.getOrderType()));
        }

        if (carFactOrderEntity.getPlatform() != null) {
            entity.setPlatform(carFactOrderEntity.getPlatform());
        }

        if (carFactOrderEntity.getPushDriverType() != null) {
            entity.setPushDriverType(String.valueOf(carFactOrderEntity.getPushDriverType()));
        }

        if (carFactOrderEntity.getReceiveSMS() != null) {
            entity.setReceiveSms(String.valueOf(carFactOrderEntity.getReceiveSMS()));
        }

        if (carFactOrderEntity.getRiderName() != null) {
            entity.setRiderName(carFactOrderEntity.getRiderName());
        }

        if (carFactOrderEntity.getRiderPhone() != null) {
            entity.setRiderPhone(carFactOrderEntity.getRiderPhone());
        }

        if (carFactOrderEntity.getSelectedPayFlag() != null) {
            entity.setSelectedPayFlag(String.valueOf(carFactOrderEntity.getSelectedPayFlag()));
        }

        if (carFactOrderEntity.getServiceTypeId() != null) {
            entity.setServiceTypeId(String.valueOf(carFactOrderEntity.getServiceTypeId()));
        }

        if (carFactOrderEntity.getStatus() != null) {
            entity.setStatus(String.valueOf(carFactOrderEntity.getStatus()));
        }

        if (carFactOrderEntity.getSysVersion() != null) {
            entity.setSysVersion(carFactOrderEntity.getSysVersion());
        }

        if (carFactOrderEntity.getUpdateBy() != null) {
            entity.setUpdateBy(String.valueOf(carFactOrderEntity.getUpdateBy()));
        }

        if (carFactOrderEntity.getUpdateDate() != null) {
            entity.setUpdateDateStr(DateUtils.getFormat(DateUtils.TIME_PATTERN).format(carFactOrderEntity.getUpdateDate()));
        }

        if (carFactOrderEntity.getVersion() != null) {
            entity.setVersion(carFactOrderEntity.getVersion());
        }

//        if (carFactOrderEntity.getOrderSource() != null) {
//            entity.setOrderSource(carFactOrderEntity.getOrderSource());
//        }

        if (carFactOrderEntity.getAutoLevelUp() != null) {
            entity.setAutoLevelUp(String.valueOf(carFactOrderEntity.getAutoLevelUp()));
        } else if (CATEGORY_INSERT.equals(eventCategory)) {
            entity.setAutoLevelUp("0"); // fix DEFAULT 0
        }

        if (carFactOrderEntity.getGoHomeStatus() != null) {
            entity.setGoHomeStatus(String.valueOf(carFactOrderEntity.getGoHomeStatus()));
        } else if (CATEGORY_INSERT.equals(eventCategory)) {
            entity.setGoHomeStatus("0"); // fix DEFAULT 0
        }

        if (carFactOrderEntity.getPayFlag() != null) {
            entity.setPayFlag(String.valueOf(carFactOrderEntity.getPayFlag()));
        } else if (CATEGORY_INSERT.equals(eventCategory)) {
            entity.setPayFlag("0"); // fix DEFAULT 0
        }

        if (carFactOrderEntity.getBuyoutPrice() != null) {
            entity.setBuyoutPrice(String.valueOf(carFactOrderEntity.getBuyoutPrice()));
        } else if (CATEGORY_INSERT.equals(eventCategory)) {
            entity.setBuyoutPrice("0.0"); // fix DEFAULT 0.0
        }

        if (carFactOrderEntity.getType() != null) {
            entity.setType(String.valueOf(carFactOrderEntity.getType()));
        } else if (CATEGORY_INSERT.equals(eventCategory)) {
            entity.setType("1");  // fix DEFAULT 1
        }

        if (carFactOrderEntity.getIsOrderOthers() != null) {
            entity.setIsOrderOthers(String.valueOf(carFactOrderEntity.getIsOrderOthers()));
        } else if (CATEGORY_INSERT.equals(eventCategory)) {
            entity.setIsOrderOthers("0"); // fix DEFAULT 0
        }

//        if (carFactOrderEntity.getFlag() != null) {
//            entity.setFlag(String.valueOf(carFactOrderEntity.getFlag()));
//        } else if (CATEGORY_INSERT.equals(eventCategory)) {
//            entity.setFlag("0"); // fix DEFAULT 0
//        }

        if (carFactOrderEntity.getAgentId() != null) {
            entity.setAgentIdStr(String.valueOf(carFactOrderEntity.getAgentId()));
        } else if (CATEGORY_INSERT.equals(eventCategory)) {
            entity.setAgentIdStr("0");  // fix DEFAULT 0
        }

        if (carFactOrderEntity.getEstimatedAmount() != null) {
            entity.setEstimatedAmount(String.valueOf(carFactOrderEntity.getEstimatedAmount()));
        } else if (CATEGORY_INSERT.equals(eventCategory)) {
            entity.setEstimatedAmount("0.0");  // fix DEFAULT 0.0
        }

        return entity;
    }
}
