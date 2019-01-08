package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.entity.Bk_rooms;

@Mapper
public interface Bk_roomsMapper {
    int deleteByPrimaryKey(Integer rid);

    int insert(Bk_rooms record);

    int insertSelective(Bk_rooms record);

    Bk_rooms selectByPrimaryKey(Integer rid);

    int updateByPrimaryKeySelective(Bk_rooms record);

    int updateByPrimaryKey(Bk_rooms record);
    
    //查询所有房间
    List<Bk_rooms> getAll(Integer hoid);
}