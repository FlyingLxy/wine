package com.wuxian99.finance.common;

import java.io.Serializable;

/**
 * Created by sxjiang on 2017/3/2.
 */
public class Result<T> implements Serializable{
    private static final long serialVersionUID = -1L;

    private Boolean isSuccess;
    private String errorMsg;
    private T data;

    public Boolean getSuccess() {
        return isSuccess;
    }

    public void setSuccess(Boolean success) {
        isSuccess = success;
    }

    public String getErrorMsg() {
        return errorMsg;
    }

    public void setErrorMsg(String errorMsg) {
        this.errorMsg = errorMsg;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public static Result<?> buildSuccess(){
        Result<?> result = new Result<>();
        result.setSuccess(true);
        return result;
    }

    public static <T> Result<T> buildSuccess(T data){
        Result<T> result = new Result<>();
        result.setSuccess(true);
        result.setData(data);
        return result;
    }

    public static <T> Result<T> buildFail(String msg){
        Result<T> result = new Result<>();
        result.setSuccess(false);
        result.setErrorMsg(msg);
        return result;
    }
}
