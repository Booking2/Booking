package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.entity.Bk_city;
import com.entity.Bk_hotel;

@Mapper
public interface Bk_cityMapper {
    int deleteByPrimaryKey(Integer ciid);

    int insert(Bk_city record);

    int insertSelective(Bk_city record);

    Bk_city selectByPrimaryKey(Integer ciid);

    int updateByPrimaryKeySelective(Bk_city record);

    int updateByPrimaryKey(Bk_city record);
    
    //获得所有城市
    @Select("select Ciid,Ciname from bk_city")
    List<Bk_city> getCityAll();
    
    //随机产生两条数据  市表
    @Select("select Ciid, Pid, Ciname, Ciictures from bk_city ORDER BY RAND() LIMIT 2")
    List<Bk_city> getlistcity();
    
    //随机产生三条数据  市表
    @Select("select Ciid, Pid, Ciname, Ciictures from bk_city ORDER BY RAND() LIMIT 3")
    List<Bk_city> getlistcity1();
    
    //不感兴趣
    @Select("select Ciid, Pid, Ciname, Ciictures from bk_city ORDER BY RAND() LIMIT 1")
    List<Bk_city> getlistcity2();
}