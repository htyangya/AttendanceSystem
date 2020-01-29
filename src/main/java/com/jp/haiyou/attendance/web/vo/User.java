package com.jp.haiyou.attendance.web.vo;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class User {
    private Integer userid;

    private String username;

    private LocalDate userbirthday;

    private String usergender;

    private String userpassword;

    private Integer usertype;

    private Integer usersuperuser;

    private String useraddress;

    private String userhometown;

    private String userphonenumber;

    private String userresidenceid;

    private LocalDateTime userentry;

    private LocalDateTime userleave;

    private LocalDateTime userlastlogintime;

    @Override
    public String toString() {
        return "User{" +
                "userid=" + userid +
                ", username='" + username + '\'' +
                ", userbirthday=" + userbirthday +
                ", usergender='" + usergender + '\'' +
                ", userpassword='" + userpassword + '\'' +
                ", usertype=" + usertype +
                ", usersuperuser=" + usersuperuser +
                ", useraddress='" + useraddress + '\'' +
                ", userhometown='" + userhometown + '\'' +
                ", userphonenumber='" + userphonenumber + '\'' +
                ", userresidenceid='" + userresidenceid + '\'' +
                ", userentry=" + userentry +
                ", userleave=" + userleave +
                ", userlastlogintime=" + userlastlogintime +
                '}';
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public LocalDate getUserbirthday() {
        return userbirthday;
    }

    public void setUserbirthday(LocalDate userbirthday) {
        this.userbirthday = userbirthday;
    }

    public String getUsergender() {
        return usergender;
    }

    public void setUsergender(String usergender) {
        this.usergender = usergender == null ? null : usergender.trim();
    }

    public String getUserpassword() {
        return userpassword;
    }

    public void setUserpassword(String userpassword) {
        this.userpassword = userpassword == null ? null : userpassword.trim();
    }

    public Integer getUsertype() {
        return usertype;
    }

    public void setUsertype(Integer usertype) {
        this.usertype = usertype;
    }

    public Integer getUsersuperuser() {
        return usersuperuser;
    }

    public void setUsersuperuser(Integer usersuperuser) {
        this.usersuperuser = usersuperuser;
    }

    public String getUseraddress() {
        return useraddress;
    }

    public void setUseraddress(String useraddress) {
        this.useraddress = useraddress == null ? null : useraddress.trim();
    }

    public String getUserhometown() {
        return userhometown;
    }

    public void setUserhometown(String userhometown) {
        this.userhometown = userhometown == null ? null : userhometown.trim();
    }

    public String getUserphonenumber() {
        return userphonenumber;
    }

    public void setUserphonenumber(String userphonenumber) {
        this.userphonenumber = userphonenumber == null ? null : userphonenumber.trim();
    }

    public String getUserresidenceid() {
        return userresidenceid;
    }

    public void setUserresidenceid(String userresidenceid) {
        this.userresidenceid = userresidenceid == null ? null : userresidenceid.trim();
    }

    public LocalDateTime getUserentry() {
        return userentry;
    }

    public void setUserentry(LocalDateTime userentry) {
        this.userentry = userentry;
    }

    public LocalDateTime getUserleave() {
        return userleave;
    }

    public void setUserleave(LocalDateTime userleave) {
        this.userleave = userleave;
    }

    public LocalDateTime getUserlastlogintime() {
        return userlastlogintime;
    }

    public void setUserlastlogintime(LocalDateTime userlastlogintime) {
        this.userlastlogintime = userlastlogintime;
    }
}