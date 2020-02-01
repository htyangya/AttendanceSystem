package com.jp.haiyou.attendance.web.controller;

import com.jp.haiyou.attendance.web.service.IUserService;
import com.jp.haiyou.attendance.web.vo.User;
import com.jp.haiyou.attendance.web.vo.UserLoginInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.time.LocalDate;
import java.util.List;

@Controller
@SessionAttributes({"loginUser"})
public class LoginController {

    @Autowired
    private IUserService userService;

    @RequestMapping(value = {"/","/login"},method = RequestMethod.GET)
    public String login_get(@SessionAttribute(required = false,value = "loginUser") User loginUser){
        if (loginUser!=null) return "redirect:/attendance/punch";
        return "login";
    }


    @RequestMapping(value = {"/","/login"},method = RequestMethod.POST)
    public String login_post(Integer userid, String password, Model model,HttpSession httpSession)  {

        UserLoginInfo loginINfo=userService.login(userid,password);
        if(loginINfo.getSuccess()==true){
            model.addAttribute("loginUser",loginINfo.getLoginUser());
            return "redirect:/attendance/punch";
        }

        if(loginINfo.getInfo().equals("このユーザーIDは存在しません")){
            Object errorCount =httpSession.getAttribute("errorCount");
            if(errorCount==null){
                errorCount=1;
            }else if((int)errorCount < 3){
                errorCount=(int)errorCount+1;
            }
            httpSession.setAttribute("errorCount",errorCount);
            loginINfo.setErrorCount((int)errorCount);
        }
        if(loginINfo.getErrorCount()>=3)loginINfo.setInfo("入力エラーの回数はすでに3回になりました,翌日に再入力できます");
        model.addAttribute("loginInfo",loginINfo);
        model.addAttribute("userid",userid);
        model.addAttribute("password",password);

        return "login";

    }

    @RequestMapping(value = {"/logout"})
    public String login_post(SessionStatus sessionStatus)  {
        sessionStatus.setComplete();
        return "redirect:/login";
    }

}
