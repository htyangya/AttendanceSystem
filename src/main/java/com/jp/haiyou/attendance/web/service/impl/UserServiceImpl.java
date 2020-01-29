package com.jp.haiyou.attendance.web.service.impl;

import com.github.pagehelper.PageHelper;
import com.jp.haiyou.attendance.web.dao.UserMapper;
import com.jp.haiyou.attendance.web.service.IUserService;
import com.jp.haiyou.attendance.web.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements IUserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> selectAll(Integer page,Integer pageSize) {
        PageHelper.startPage(page,pageSize);
        return  userMapper.selectAll();
    }
}
