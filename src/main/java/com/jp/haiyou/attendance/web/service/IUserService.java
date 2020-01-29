package com.jp.haiyou.attendance.web.service;

import com.jp.haiyou.attendance.web.dao.UserMapper;
import com.jp.haiyou.attendance.web.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


public interface IUserService {

    List<User> selectAll(Integer page,Integer pageSize);

}
