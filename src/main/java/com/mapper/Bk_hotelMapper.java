package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import com.entity.Bk_hotel;

import org.apache.ibatis.annotations.Param;
@Mapper
public interface Bk_hotelMapper {
    int deleteByPrimaryKey(Integer hoid);

    int insert(Bk_hotel record);

    int insertSelective(Bk_hotel record);

    Bk_hotel selectByPrimaryKey(Integer hoid);

    int updateByPrimaryKeySelective(Bk_hotel record);

    int updateByPrimaryKey(Bk_hotel record);
    

    //分页 酒店总数量
    int counthotleid(@Param("ciid") Integer ciid);
    
    ////首页单击市区显示酒店详情功能 
    List<Bk_hotel> gethotelByArid(@Param("arid") Integer arid,@Param("stratIndex") Integer stratIndex,@Param("pageSize") Integer pageSize);
    
    //酒店id查找酒店图片，评分
    List<Bk_hotel> getpipictureAndsscoreById(@Param("hoid")  Integer hoid);
    
    //搜索联想功能
    List<Bk_hotel> gethonameByhoname(@Param("honame") String honame);

    ////首页单击市区显示酒店详情功能 
    List<Bk_hotel> gethotelByArid(@Param("arid") Integer arid);
    
    //根据酒店id搜索联机
    List<Bk_hotel> gethotelAllByhoid(@Param("hoid") Integer hoid);
}