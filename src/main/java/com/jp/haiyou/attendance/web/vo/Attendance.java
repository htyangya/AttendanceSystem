package com.jp.haiyou.attendance.web.vo;

import java.time.LocalDateTime;
import java.time.LocalTime;

public class Attendance {
    private Integer attendanceid;

    private Integer attendanceuserid;

    private LocalDateTime attendancetime;

    private LocalTime attendancestandard;

    private String attendancemark;

    @Override
    public String toString() {
        return "Attendance{" +
                "attendanceid=" + attendanceid +
                ", attendanceuserid=" + attendanceuserid +
                ", attendancetime=" + attendancetime +
                ", attendancestandard=" + attendancestandard +
                ", attendancemark='" + attendancemark + '\'' +
                '}';
    }

    public Integer getAttendanceid() {
        return attendanceid;
    }

    public void setAttendanceid(Integer attendanceid) {
        this.attendanceid = attendanceid;
    }

    public Integer getAttendanceuserid() {
        return attendanceuserid;
    }

    public void setAttendanceuserid(Integer attendanceuserid) {
        this.attendanceuserid = attendanceuserid;
    }

    public LocalDateTime getAttendancetime() {
        return attendancetime;
    }

    public void setAttendancetime(LocalDateTime attendancetime) {
        this.attendancetime = attendancetime;
    }

    public LocalTime getAttendancestandard() {
        return attendancestandard;
    }

    public void setAttendancestandard(LocalTime attendancestandard) {
        this.attendancestandard = attendancestandard;
    }

    public String getAttendancemark() {
        return attendancemark;
    }

    public void setAttendancemark(String attendancemark) {
        this.attendancemark = attendancemark == null ? null : attendancemark.trim();
    }
}