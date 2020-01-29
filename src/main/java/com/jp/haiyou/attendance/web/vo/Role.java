package com.jp.haiyou.attendance.web.vo;

import java.time.LocalTime;

public class Role {
    private Integer roleid;

    private String roletype;

    private LocalTime roleattendtime;

    private LocalTime rolequittime;

    private Float rolecurrentmonthtime;

    @Override
    public String toString() {
        return "Role{" +
                "roleid=" + roleid +
                ", roletype='" + roletype + '\'' +
                ", roleattendtime=" + roleattendtime +
                ", rolequittime=" + rolequittime +
                ", rolecurrentmonthtime=" + rolecurrentmonthtime +
                '}';
    }

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public String getRoletype() {
        return roletype;
    }

    public void setRoletype(String roletype) {
        this.roletype = roletype == null ? null : roletype.trim();
    }

    public LocalTime getRoleattendtime() {
        return roleattendtime;
    }

    public void setRoleattendtime(LocalTime roleattendtime) {
        this.roleattendtime = roleattendtime;
    }

    public LocalTime getRolequittime() {
        return rolequittime;
    }

    public void setRolequittime(LocalTime rolequittime) {
        this.rolequittime = rolequittime;
    }

    public Float getRolecurrentmonthtime() {
        return rolecurrentmonthtime;
    }

    public void setRolecurrentmonthtime(Float rolecurrentmonthtime) {
        this.rolecurrentmonthtime = rolecurrentmonthtime;
    }
}