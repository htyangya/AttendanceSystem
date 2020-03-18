package com.jp.haiyou.attendance.web.controller;

import com.jp.haiyou.attendance.web.service.IRoleService;
import com.jp.haiyou.attendance.web.service.IUserService;
import com.jp.haiyou.attendance.web.vo.Role;
import com.jp.haiyou.attendance.web.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.xml.crypto.Data;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/role")
public class RoleController {
    @Autowired
    private IRoleService roleService;

    @RequestMapping(value = {"/role-list"},method = RequestMethod.POST)
    public String rolePost(Role role){
        System.out.println("post-rlist");
        roleService.tsuika(role);
//        roleService.tsuika(role);
       return "redirect:/role/role-list";

    }

    @RequestMapping(value = {"/role-list"},method = RequestMethod.GET)
    public ModelAndView roleList(HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
        List<Role> roles = roleService.selectAll();
        //for (Role role : roles) {
        //    System.out.println(role);
       // }
        modelAndView.addObject("roles",roles);
        modelAndView.setViewName("list/role-list");


        return modelAndView;
    }

    @RequestMapping("/delete.do")
    public String detele(int roleid) {
        roleService.delete(roleid);
        return "redirect:/role/role-list";
    }

   @RequestMapping("/update.do")
    public String Update(Role role) {
        System.out.println(role);
        System.out.println("update-to");
        roleService.Update(role);
        return "redirect:/role/role-list";
    }
}
