package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Bk_hotel;

public interface Bk_hotelSerivce {
	 List<Bk_hotel> gethotelByArid(@Param("arid") Integer arid,Integer stratIndex,Integer pageSize);
	 
	 int counthotleid(Integer ciid);
	 
	//酒店id查找酒店图片，评分
	 List<Bk_hotel> getpipictureAndsscoreById(Integer hoid);
	 
	 List<Bk_hotel> gethonameByhoname(String honame);
	 
	//根据酒店id搜索联机
	 List<Bk_hotel> gethotelAllByhoid(Integer hoid);
}
