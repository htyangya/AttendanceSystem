package com.jp.haiyou.attendance.web.vo;

import java.util.List;

public class UserLoginInfo {
    private String info;
    private Boolean isSuccess;
    private int errorCount;
    private User loginUser;

    public User getLoginUser() {
        return loginUser;
    }

    public void setLoginUser(User loginUser) {
        this.loginUser = loginUser;
    }

    public UserLoginInfo() {
        this.isSuccess=false;
    }

    @Override
    public String toString() {
        return "UserLoginInfo{" +
                "info='" + info + '\'' +
                ", isSuccess=" + isSuccess +
                ", errorCount=" + errorCount +
                '}';
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public Boolean getSuccess() {
        return isSuccess;
    }

    public void setSuccess(Boolean success) {
        isSuccess = success;
    }

    public int getErrorCount() {
        return errorCount;
    }

    public void setErrorCount(int errorCount) {
        this.errorCount = errorCount;
    }
}
