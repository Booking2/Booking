package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.entity.Bk_hotel;
@Mapper
public interface Bk_hotelMapper {
    int deleteByPrimaryKey(Integer hoid);

    int insert(Bk_hotel record);

    int insertSelective(Bk_hotel record);

    Bk_hotel selectByPrimaryKey(Integer hoid);

    int updateByPrimaryKeySelective(Bk_hotel record);

    int updateByPrimaryKey(Bk_hotel record);
    
    ////首页单击市区显示酒店详情功能 
    List<Bk_hotel> gethotelByArid(@Param("arid") Integer arid);
    
}