package com.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.entity.Bk_user;

@Mapper
public interface Bk_userMapper {
    int deleteByPrimaryKey(Integer uid);

    int insert(Bk_user record);

    int insertSelective(Bk_user record);

    Bk_user selectByPrimaryKey(Integer uid);

    int updateByPrimaryKeySelective(Bk_user record);

    int updateByPrimaryKey(Bk_user record);
    //登陆
    Bk_user login(@Param("uphone") String uphone,@Param("upassword") String upassword);
    //判断手机号码是否注册过
    int  regiphone(@Param("uphone") String uphone);
}