package com.jp.haiyou.attendance.web.controller;

import com.jp.haiyou.attendance.web.service.IUserService;
import com.jp.haiyou.attendance.web.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;
import java.util.List;

@Controller
public class LoginController {

    @Autowired
    private IUserService userService;

    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String login_get() {

        return "login";
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login_post(Integer userid,String password) {

        return "redirect:/";
    }


}
