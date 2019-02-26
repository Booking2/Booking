package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.entity.Bk_rooms;

@Mapper
public interface Bk_roomsMapper {
    int deleteByPrimaryKey(Integer rid);

    int insert(Bk_rooms record);

    int insertSelective(Bk_rooms record);

    Bk_rooms selectByPrimaryKey(Integer rid);

    int updateByPrimaryKeySelective(Bk_rooms record);

    int updateByPrimaryKey(Bk_rooms record);
    
    //根据酒店id查询所有空房间
    List<Bk_rooms> getAll(Integer hoid);
    
    //根据时间查询所有空房间
    List<Bk_rooms> getAllbytime(@Param("Rstaydate") String Rstaydate,@Param("hoid") Integer hoid);
}