package com.jp.haiyou.attendance.web.dao;

import com.jp.haiyou.attendance.web.vo.Attendance;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface AttendanceMapper {
    @Delete({
        "delete from attendance",
        "where ATTENDANCEID = #{attendanceid,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer attendanceid);

    @Insert({
        "insert into attendance (ATTENDANCEID, ATTENDANCEUSERID, ",
        "ATTENDANCETIME, ATTENDANCESTANDARD, ",
        "ATTENDANCEMARK)",
        "values (#{attendanceid,jdbcType=INTEGER}, #{attendanceuserid,jdbcType=INTEGER}, ",
        "#{attendancetime,jdbcType=TIMESTAMP}, #{attendancestandard,jdbcType=TIME}, ",
        "#{attendancemark,jdbcType=VARCHAR})"
    })
    int insert(Attendance record);

    int insertSelective(Attendance record);

    @Select({
        "select",
        "ATTENDANCEID, ATTENDANCEUSERID, ATTENDANCETIME, ATTENDANCESTANDARD, ATTENDANCEMARK",
        "from attendance",
        "where ATTENDANCEID = #{attendanceid,jdbcType=INTEGER}"
    })
    @ResultMap("com.jp.haiyou.attendance.web.dao.AttendanceMapper.BaseResultMap")
    Attendance selectByPrimaryKey(Integer attendanceid);

    int updateByPrimaryKeySelective(Attendance record);

    @Update({
        "update attendance",
        "set ATTENDANCEUSERID = #{attendanceuserid,jdbcType=INTEGER},",
          "ATTENDANCETIME = #{attendancetime,jdbcType=TIMESTAMP},",
          "ATTENDANCESTANDARD = #{attendancestandard,jdbcType=TIME},",
          "ATTENDANCEMARK = #{attendancemark,jdbcType=VARCHAR}",
        "where ATTENDANCEID = #{attendanceid,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(Attendance record);
}