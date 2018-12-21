package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Hotel_type;
import com.mapper.Hotel_typeMapper;
import com.service.Hotel_typeService;

@Service("hotel_typeService")
public class Hotel_typeServiceImpl implements Hotel_typeService {

	@Autowired
	private Hotel_typeMapper hotel_typeMapper;
	
	@Override
	public List<Hotel_type> getHotelTypeAll() {
		// TODO Auto-generated method stub
		return hotel_typeMapper.getHotelTypeAll();
	}

}
