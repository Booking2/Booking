package com.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.entity.Bk_rent;

@Mapper
public interface Bk_rentMapper {
    int deleteByPrimaryKey(Integer reid);

    int insert(Bk_rent record);
   
    int insertSelective(Bk_rent record);

    Bk_rent selectByPrimaryKey(Integer reid);
    
    int selectLogin(Bk_rent record);
    
    int selectPhone(String phone);

    int updateByPrimaryKeySelective(Bk_rent record);

    int updateByPrimaryKey(Bk_rent record);
}