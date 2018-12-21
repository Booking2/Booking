package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.entity.Hotel_type;

@Mapper
public interface Hotel_typeMapper {
    int deleteByPrimaryKey(Integer hid);

    int insert(Hotel_type record);

    int insertSelective(Hotel_type record);

    Hotel_type selectByPrimaryKey(Integer hid);

    int updateByPrimaryKeySelective(Hotel_type record);

    int updateByPrimaryKey(Hotel_type record);
    
    //查询出所有酒店类型
    List<Hotel_type> getHotelTypeAll();
}