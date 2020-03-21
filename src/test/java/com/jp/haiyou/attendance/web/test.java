package com.jp.haiyou.attendance.web;


import com.jp.haiyou.attendance.web.dao.AttendanceMapper;
import com.jp.haiyou.attendance.web.dao.RoleMapper;
import com.jp.haiyou.attendance.web.dao.UserMapper;
import com.jp.haiyou.attendance.web.vo.Attendance;
import com.jp.haiyou.attendance.web.vo.AttendanceRecord;
import com.jp.haiyou.attendance.web.vo.Role;
import com.jp.haiyou.attendance.web.vo.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Time;
import java.sql.Timestamp;
import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.Date;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/spring-*.xml"})
public class test {
    @Autowired
    UserMapper userMapper;

    @Autowired
    RoleMapper roleMapper;


    @Autowired
    AttendanceMapper attendanceMapper;

    @Test
    @Transactional
    public void xx(){
        User user = userMapper.selectByPrimaryKeyOfRole(10001);
        System.out.println(user);
        System.out.println(user.getRole());
//        Role role = roleMapper.selectByPrimaryKey(user.getUsertype());
//        System.out.println(role);
    }
    @Test

    public void aa(){
        Integer check = attendanceMapper.todayCheck(10001, "退社");
        System.out.println(check);

    }
    @Test
    public void bb(){
        List<AttendanceRecord> records = attendanceMapper.selectAttendanceRecord(10000);
        for (AttendanceRecord record : records) {
            System.out.println(record);
        }
    }


}
