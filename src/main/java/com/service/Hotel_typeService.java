package com.service;

import java.util.List;

import com.entity.Hotel_type;

public interface Hotel_typeService {

	//查询出所有酒店类型
	List<Hotel_type> getHotelTypeAll();
}
