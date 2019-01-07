package com.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.entity.Bk_collection;

@Mapper
public interface Bk_collectionMapper {
    int deleteByPrimaryKey(Integer cid);
    
    //添加收藏
    int insert(Bk_collection record);

    int insertSelective(Bk_collection record);

    Bk_collection selectByPrimaryKey(Integer cid);

    int updateByPrimaryKeySelective(Bk_collection record);

    int updateByPrimaryKey(Bk_collection record);
    
    //判断数据库是否有该值
    int gethoidByhoid(Bk_collection record);
}