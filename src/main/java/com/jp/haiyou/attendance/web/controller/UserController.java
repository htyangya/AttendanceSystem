package com.jp.haiyou.attendance.web.controller;

import com.github.pagehelper.PageInfo;
import com.jp.haiyou.attendance.web.service.IUserService;
import com.jp.haiyou.attendance.web.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ConversionServiceFactoryBean;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private IUserService userService;

    @RequestMapping("/user-list")
    public ModelAndView userList(@RequestParam(required = false,defaultValue = "1") Integer page,@RequestParam(required = false,defaultValue = "5")Integer pageSize){
        ModelAndView modelAndView = new ModelAndView();
        if (pageSize>=25) pageSize=25;
        List<User> users = userService.selectAll(page,pageSize);
        PageInfo pageInfo=new PageInfo(users);
        modelAndView.addObject("pageInfo",pageInfo);
        modelAndView.setViewName("list/user-list");
//        System.out.println(users);
        return modelAndView;
    }
}
