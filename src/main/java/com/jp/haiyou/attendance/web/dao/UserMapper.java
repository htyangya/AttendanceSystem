package com.jp.haiyou.attendance.web.dao;

import com.jp.haiyou.attendance.web.vo.User;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface UserMapper {
    @Delete({
        "delete from user",
        "where USERID = #{userid,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer userid);

    @Insert({
        "insert into user (USERNAME, USERBIRTHDAY, ",
        "USERGENDER, USERPASSWORD, ",
        "USERTYPE, USERSUPERUSER, ",
        "USERADDRESS, USERHOMETOWN, ",
        "USERPHONENUMBER, USERRESIDENCEID, ",
        "USERENTRY, USERLEAVE, ",
        "USERLASTLOGINTIME)",
        "values (#{username,jdbcType=VARCHAR}, #{userbirthday,jdbcType=DATE}, ",
        "#{usergender,jdbcType=VARCHAR}, #{userpassword,jdbcType=VARCHAR}, ",
        "#{usertype,jdbcType=INTEGER}, #{usersuperuser,jdbcType=INTEGER}, ",
        "#{useraddress,jdbcType=VARCHAR}, #{userhometown,jdbcType=VARCHAR}, ",
        "#{userphonenumber,jdbcType=VARCHAR}, #{userresidenceid,jdbcType=VARCHAR}, ",
        "#{userentry,jdbcType=TIMESTAMP}, #{userleave,jdbcType=TIMESTAMP}, ",
        "#{userlastlogintime,jdbcType=TIMESTAMP})"
    })
    @Options(useGeneratedKeys=true,keyProperty="userid")
    int insert(User record);

    int insertSelective(User record);

    @Select({
        "select",
        "USERID, USERNAME, USERBIRTHDAY, USERGENDER, USERPASSWORD, USERTYPE, USERSUPERUSER, ",
        "USERADDRESS, USERHOMETOWN, USERPHONENUMBER, USERRESIDENCEID, USERENTRY, USERLEAVE, ",
        "USERLASTLOGINTIME",
        "from user",
        "where USERID = #{userid,jdbcType=INTEGER}"
    })
    @ResultMap("com.jp.haiyou.attendance.web.dao.UserMapper.BaseResultMap")
    User selectByPrimaryKey(Integer userid);

    int updateByPrimaryKeySelective(User record);

    @Update({
        "update user",
        "set USERNAME = #{username,jdbcType=VARCHAR},",
          "USERBIRTHDAY = #{userbirthday,jdbcType=DATE},",
          "USERGENDER = #{usergender,jdbcType=VARCHAR},",
          "USERPASSWORD = #{userpassword,jdbcType=VARCHAR},",
          "USERTYPE = #{usertype,jdbcType=INTEGER},",
          "USERSUPERUSER = #{usersuperuser,jdbcType=INTEGER},",
          "USERADDRESS = #{useraddress,jdbcType=VARCHAR},",
          "USERHOMETOWN = #{userhometown,jdbcType=VARCHAR},",
          "USERPHONENUMBER = #{userphonenumber,jdbcType=VARCHAR},",
          "USERRESIDENCEID = #{userresidenceid,jdbcType=VARCHAR},",
          "USERENTRY = #{userentry,jdbcType=TIMESTAMP},",
          "USERLEAVE = #{userleave,jdbcType=TIMESTAMP},",
          "USERLASTLOGINTIME = #{userlastlogintime,jdbcType=TIMESTAMP}",
        "where USERID = #{userid,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(User record);

    @Select("select * from user")
    List<User> selectAll();
}