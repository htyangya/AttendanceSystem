package com.jp.haiyou.attendance.web.service.impl;

import com.jp.haiyou.attendance.web.dao.AttendanceMapper;
import com.jp.haiyou.attendance.web.dao.RoleMapper;
import com.jp.haiyou.attendance.web.service.IAttendanceService;
import com.jp.haiyou.attendance.web.vo.Attendance;
import com.jp.haiyou.attendance.web.vo.AttendanceRecord;
import com.jp.haiyou.attendance.web.vo.Role;
import com.jp.haiyou.attendance.web.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;

@Service
@Transactional
public class AttendanceServiceImpl implements IAttendanceService {

    @Autowired
    private AttendanceMapper AttendanceMapper;
    @Autowired
    private RoleMapper RoleMapper;

    @Override
    public List<User> selectAll(Integer page, Integer pageSize) {
        return null;
    }
  
    @Override
    public Attendance punch(String attendancemark, User user) {
        Attendance attendance = new Attendance();
        //出退勤标志
        attendance.setAttendancemark(attendancemark);
        //用户id
        attendance.setAttendanceuserid(user.getUserid());
        //根据用户类型取得role
        Role role = RoleMapper.selectByPrimaryKey(user.getUsertype());
        //判断取得的值,并且更新标准时间
        if (attendancemark =="出勤"){
            attendance.setAttendancestandard(role.getRoleattendtime());
        }else{
            attendance.setAttendancestandard(role.getRolequittime());
        }

        //设置现在的时间
        attendance.setAttendancetime(LocalDateTime.now());
        AttendanceMapper.insert(attendance);

        return attendance;
    }

    @Override
    public Integer todayCheck(Integer userid, String syukkin) {
        return AttendanceMapper.todayCheck(userid,syukkin);
    }

    @Override
    public String syukkinjikan(Integer userid, String syukkin) {
        return AttendanceMapper.syukkinjikan(userid,syukkin);
    }

    @Override
    public List<AttendanceRecord> selectAttendanceRecord(Integer id) {
        return AttendanceMapper.selectAttendanceRecord(id);
    }


}
