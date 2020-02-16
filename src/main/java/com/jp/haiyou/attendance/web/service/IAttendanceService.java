package com.jp.haiyou.attendance.web.service;

import com.jp.haiyou.attendance.web.vo.Attendance;
import com.jp.haiyou.attendance.web.vo.User;

import java.util.List;

/**
 * @author 張先茂
 * @version v1.0
 * @classname アテンダントサービス操作
 * @data 2020/02/20 19時
 */
public interface IAttendanceService {
    List<User> selectAll(Integer page, Integer pageSize);

    Attendance punch(String attendancemark, User user );
}
