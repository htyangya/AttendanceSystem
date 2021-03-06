package com.jp.haiyou.attendance.web.dao;

import com.jp.haiyou.attendance.web.vo.Role;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface RoleMapper {
    @Delete({
        "delete from role",
        "where ROLEID = #{roleid,jdbcType=INTEGER}"
    })
    int deleteByPrimaryKey(Integer roleid);

    @Insert({
        "insert into role (ROLETYPE, ROLEATTENDTIME, ",
        "ROLEQUITTIME, ROLECURRENTMONTHTIME)",
        "values (#{roletype,jdbcType=VARCHAR}, #{roleattendtime,jdbcType=TIME}, ",
        "#{rolequittime,jdbcType=TIME}, #{rolecurrentmonthtime,jdbcType=REAL})"
    })
    @Options(useGeneratedKeys=true,keyProperty="roleid")
    int insert(Role record);

    int insertSelective(Role record);

    @Select({
        "select",
        "ROLEID, ROLETYPE, ROLEATTENDTIME, ROLEQUITTIME, ROLECURRENTMONTHTIME",
        "from role",
        "where ROLEID = #{roleid,jdbcType=INTEGER}"
    })
    @ResultMap("com.jp.haiyou.attendance.web.dao.RoleMapper.BaseResultMap")
    Role selectByPrimaryKey(Integer roleid);

    int updateByPrimaryKeySelective(Role record);

    @Update({
        "update role",
        "set ROLETYPE = #{roletype,jdbcType=VARCHAR},",
          "ROLEATTENDTIME = #{roleattendtime,jdbcType=TIME},",
          "ROLEQUITTIME = #{rolequittime,jdbcType=TIME},",
          "ROLECURRENTMONTHTIME = #{rolecurrentmonthtime,jdbcType=REAL}",
        "where ROLEID = #{roleid,jdbcType=INTEGER}"
    })
    int updateByPrimaryKey(Role record);

    @Select("select * from role")
    List<Role> selectAll();
}