package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.entity.Bk_rent;

@Mapper
public interface Bk_rentMapper {
    int deleteByPrimaryKey(Integer reid);

    int insert(Bk_rent record);
   
    int insertSelective(Bk_rent record);

    Bk_rent selectByPrimaryKey(Integer reid);
    
    //登录
    int selectLogin(Bk_rent record);
    
    //验证账号的唯一性
    int selectPhone(String phone);
    
    //查询个人信息
    List<Bk_rent> selectAll();

    int updateByPrimaryKeySelective(Bk_rent record);

    int updateByPrimaryKey(Bk_rent record);
}