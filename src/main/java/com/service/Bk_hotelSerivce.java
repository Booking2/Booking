package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Bk_hotel;

public interface Bk_hotelSerivce {
	 List<Bk_hotel> gethotelByArid(@Param("arid") Integer arid);
}
