package com.jp.haiyou.attendance.web.service;

import com.jp.haiyou.attendance.web.vo.Role;

import java.util.List;

public interface IRoleService {
    List<Role> selectAll();
    void tsuika(Role role);
    void delete(int roleid);

    Role Update(Role role);
}

