package com.bytearch.fast.cloud.mysql.sharding.common;

public class ResponseResult<T> {
    private final static Integer SUCCESS = 0;
    private final static Integer ERROR = 1;

    private Integer code;
    private Integer status;
    private String msg;
    private T data;

    public ResponseResult(Integer code, Integer status, String msg, T data) {
        this.code = code;
        this.status = status;
        this.msg = msg;
        this.data = data;
    }

    public static <T> ResponseResult buildSuccess(T data) {
        return new ResponseResult<>(0, SUCCESS, null, data);
    }

    public static <T> ResponseResult buildError(Integer code, String msg) {
        return new ResponseResult<>(code, ERROR, msg, null);
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
