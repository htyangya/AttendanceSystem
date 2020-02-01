package com.jp.haiyou.attendance.web.service.impl;

import com.github.pagehelper.PageHelper;
import com.jp.haiyou.attendance.web.converter.LocalDateTimeConverter;
import com.jp.haiyou.attendance.web.dao.UserMapper;
import com.jp.haiyou.attendance.web.service.IUserService;
import com.jp.haiyou.attendance.web.vo.Role;
import com.jp.haiyou.attendance.web.vo.User;
import com.jp.haiyou.attendance.web.vo.UserLoginInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Service
public class UserServiceImpl implements IUserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> selectAll(Integer page, Integer pageSize) {
        PageHelper.startPage(page,pageSize);

        return  userMapper.selectAll();
    }

    @Override
    public UserLoginInfo login(Integer userid, String password) {

        User user = userMapper.selectByPrimaryKeyOfRole(userid);
        UserLoginInfo userLoginInfo = new UserLoginInfo();
        if (user == null) {
            userLoginInfo.setInfo("このユーザーIDは存在しません");
            return userLoginInfo;
        }

        if (user.getUsererrorcount() >= 3) {
            LocalDateTime lasttime = user.getUserlastlogintime();
//            上次登陆为空，说明第一次登陆，设置一下时间。上次登陆时间小于一天，直接返回错误
            if (lasttime == null || Duration.between(lasttime, LocalDateTime.now()).toHours() <= 24) {
                if (lasttime == null) {
                    user.setUserlastlogintime(LocalDateTime.now());
                    userMapper.updateByPrimaryKey(user);
                }
                userLoginInfo.setErrorCount(user.getUsererrorcount());
                userLoginInfo.setInfo("入力エラーの回数はすでに3回になりました,翌日に再入力できます");
                return userLoginInfo;
            } else {
//            上次登陆时间已经大于1天，重置次数和上次登陆时间，再进行后续判断
                user.setUsererrorcount(0);
            }
        }


//        进行密码判断,正确更新登陆时间，不正确更新错误次数和错误记录时间

         if(!user.getUserpassword().equals(password)){
             user.setUserlastlogintime(LocalDateTime.now());
             user.setUsererrorcount(user.getUsererrorcount()+1);
            userLoginInfo.setInfo("パスワードの入力エラー");

         }else{
             user.setUserlastlogintime(LocalDateTime.now());
             userLoginInfo.setSuccess(true);
             userLoginInfo.setLoginUser(user);
         }

        userLoginInfo.setErrorCount(user.getUsererrorcount());
        userMapper.updateByPrimaryKey(user);

        return userLoginInfo;
    }
}
