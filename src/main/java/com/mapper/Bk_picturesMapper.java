package com.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.entity.Bk_pictures;

@Mapper
public interface Bk_picturesMapper {
    int deleteByPrimaryKey(Integer piid);

    int insert(Bk_pictures record);

    int insertSelective(Bk_pictures record);

    Bk_pictures selectByPrimaryKey(Integer piid);

    int updateByPrimaryKeySelective(Bk_pictures record);

    int updateByPrimaryKey(Bk_pictures record);
}