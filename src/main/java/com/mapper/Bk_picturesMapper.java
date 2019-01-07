package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.entity.Bk_pictures;

/*酒店房间图片*/
@Mapper
public interface Bk_picturesMapper {
    int deleteByPrimaryKey(Integer piid);

    int insert(Bk_pictures record);

    int insertSelective(Bk_pictures record);

    Bk_pictures selectByPrimaryKey(Integer piid);

    int updateByPrimaryKeySelective(Bk_pictures record);

    int updateByPrimaryKey(Bk_pictures record);
    
    //酒店id查询酒店图片功能
    List<Bk_pictures> getpicturesByHoid(@Param("hoid") Integer hoid);
}