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
    public void tsuika(Role role) {

        roleMapper.insert(role);

    }

    @Override
    public void delete(int roleid) {

        roleMapper.delete(roleid);
    }

    @Override
    public Role Update(Role role) {

        roleMapper.Update(role);
        return  role;
    }


    @Override
    public List<Role> selectAll() {
        return roleMapper.selectAll();
    }


}
