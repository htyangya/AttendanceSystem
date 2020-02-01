package com.jp.haiyou.attendance.web.controller;

import com.jp.haiyou.attendance.web.service.IAttendanceService;
import com.jp.haiyou.attendance.web.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * @author 張先茂
 * @version v1.0
 * @classname アテンダントコントローラス操作
 * @data 2020/02/20 19時
 */
@Controller
@RequestMapping("/attendance")
public class AttendanceController {

    @Autowired
    private IAttendanceService service;

    //打卡预备的函数
    @RequestMapping("/punch")
    public ModelAndView punch(){
        ModelAndView modelAndView = new ModelAndView();

//        modelAndView.setViewName("punch");


        return modelAndView;
    }
}
