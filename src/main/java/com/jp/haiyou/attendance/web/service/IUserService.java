package com.jp.haiyou.attendance.web.service;

import com.jp.haiyou.attendance.web.vo.Role;
import com.jp.haiyou.attendance.web.vo.User;
import com.jp.haiyou.attendance.web.vo.UserLoginInfo;

import java.util.List;


public interface IUserService {

    List<User> selectAll(Integer page, Integer pageSize);

    UserLoginInfo login(Integer userid, String password);
}
