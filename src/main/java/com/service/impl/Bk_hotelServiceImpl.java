package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Bk_hotel;
import com.mapper.Bk_hotelMapper;
import com.service.Bk_hotelService;

@Service("bk_hotelService")
public class Bk_hotelServiceImpl implements Bk_hotelService{

	@Autowired
	private Bk_hotelMapper bk_hotelMapper;
	
	@Override
	public int insertSelective(Bk_hotel record) {
		// TODO Auto-generated method stub
		return bk_hotelMapper.insertSelective(record);
	}

}
