package com.jp.haiyou.attendance.web.dao;

import com.jp.haiyou.attendance.web.vo.Role;
import com.jp.haiyou.attendance.web.vo.User;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
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
        "USERLASTLOGINTIME, USERERRORCOUNT)",
        "values (#{username,jdbcType=VARCHAR}, #{userbirthday,jdbcType=DATE}, ",
        "#{usergender,jdbcType=VARCHAR}, #{userpassword,jdbcType=VARCHAR}, ",
        "#{usertype,jdbcType=INTEGER}, #{usersuperuser,jdbcType=INTEGER}, ",
        "#{useraddress,jdbcType=VARCHAR}, #{userhometown,jdbcType=VARCHAR}, ",
        "#{userphonenumber,jdbcType=VARCHAR}, #{userresidenceid,jdbcType=VARCHAR}, ",
        "#{userentry,jdbcType=TIMESTAMP}, #{userleave,jdbcType=TIMESTAMP}, ",
        "#{userlastlogintime,jdbcType=TIMESTAMP}, #{usererrorcount,jdbcType=INTEGER})"
    })
    @Options(useGeneratedKeys=true,keyProperty="userid")
    int insert(User record);

    int insertSelective(User record);

    @Select({
        "select",
        "USERID, USERNAME, USERBIRTHDAY, USERGENDER, USERPASSWORD, USERTYPE, USERSUPERUSER, ",
        "USERADDRESS, USERHOMETOWN, USERPHONENUMBER, USERRESIDENCEID, USERENTRY, USERLEAVE, ",
        "USERLASTLOGINTIME, USERERRORCOUNT",
        "from user",
        "where USERID = #{userid,jdbcType=INTEGER}"
    })
    @ResultMap("com.jp.haiyou.attendance.web.dao.UserMapper.BaseResultMap")
    User selectByPrimaryKey(Integer userid);

    @Select("select * from user where USERID = #{userid}")
    @Results({@Result(column="USERTYPE", property="usertype"),
            @Result(property = "role",column = "USERTYPE",javaType = Role.class,
            one = @One(select = "com.jp.haiyou.attendance.web.dao.RoleMapper.selectByPrimaryKey"))})
    User selectByPrimaryKeyOfRole(Integer userid);

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
          "USERLASTLOGINTIME = #{userlastlogintime,jdbcType=TIMESTAMP},",
          "USERERRORCOUNT = #{usererrorcount,jdbcType=INTEGER}",
        "where USERID = #{userid,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(User record);

    @Select("select * from user")
    List<User> selectAll();
}