package com.jp.haiyou.attendance.web.controller;

import com.jp.haiyou.attendance.web.service.IRoleService;
import com.jp.haiyou.attendance.web.service.IUserService;
import com.jp.haiyou.attendance.web.vo.Role;
import com.jp.haiyou.attendance.web.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/role")
public class RoleController {
    @Autowired
    private IRoleService roleService;

    @RequestMapping("/role-list")
    public ModelAndView roleList(HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
        List<Role> roles = roleService.selectAll();
        for (Role role : roles) {
            System.out.println(role);
        }
        modelAndView.addObject("roles",roles);
        modelAndView.setViewName("list/role-list");


        return modelAndView;
    }
}
