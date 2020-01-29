package com.jp.haiyou.attendance.web.service.impl;

import com.jp.haiyou.attendance.web.dao.RoleMapper;
import com.jp.haiyou.attendance.web.service.IRoleService;
import com.jp.haiyou.attendance.web.vo.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleServiceImpl implements IRoleService {
    @Autowired
    private RoleMapper roleMapper;

    @Override
    public List<Role> selectAll() {
        return roleMapper.selectAll();
    }
}
