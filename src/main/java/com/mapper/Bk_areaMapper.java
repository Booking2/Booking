package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.entity.Bk_area;

@Mapper
public interface Bk_areaMapper {
    int deleteByPrimaryKey(Integer arid);

    int insert(Bk_area record);

    int insertSelective(Bk_area record);

    Bk_area selectByPrimaryKey(Integer arid);

    int updateByPrimaryKeySelective(Bk_area record);

    int updateByPrimaryKey(Bk_area record);
    
    List<Bk_area> getAreaAll(Integer Ciid);
}