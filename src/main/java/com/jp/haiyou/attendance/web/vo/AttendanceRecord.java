package com.jp.haiyou.attendance.web.vo;

import java.time.LocalDate;
import java.time.LocalTime;

public class AttendanceRecord {

    private LocalDate attendanceDate;
    private LocalTime syukintime;
    private Integer lateMinute;
    private LocalTime taikintime;
    private Integer leaveEarly;

    public LocalDate getAttendanceDate() {
        return attendanceDate;
    }

    public void setAttendanceDate(LocalDate attendanceDate) {
        this.attendanceDate = attendanceDate;
    }

    public LocalTime getSyukintime() {
        return syukintime;
    }

    public void setSyukintime(LocalTime syukintime) {
        this.syukintime = syukintime;
    }

    public Integer getLateMinute() {
        return lateMinute;
    }

    public void setLateMinute(Integer lateMinute) {
        this.lateMinute = lateMinute;
    }

    public LocalTime getTaikintime() {
        return taikintime;
    }

    public void setTaikintime(LocalTime taikintime) {
        this.taikintime = taikintime;
    }

    public Integer getLeaveEarly() {
        return leaveEarly;
    }

    public void setLeaveEarly(Integer leaveEarly) {
        this.leaveEarly = leaveEarly;
    }

    @Override
    public String toString() {
        return "AttendanceRecord{" +
                "attendanceDate=" + attendanceDate +
                ", syukintime=" + syukintime +
                ", lateMinute=" + lateMinute +
                ", taikintime=" + taikintime +
                ", leaveEarly=" + leaveEarly +
                '}';
    }
}
