package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Bk_hotel;
import com.mapper.Bk_hotelMapper;
import com.service.Bk_hotelSerivce;

@Service("bk_hotelSerivce")
public class Bk_hotelSerivceImpl implements Bk_hotelSerivce {
    
	@Autowired
	private Bk_hotelMapper bk_hotelMapper;

	@Override
	public List<Bk_hotel> gethotelByArid(Integer arid) {
		// TODO Auto-generated method stub
		return bk_hotelMapper.gethotelByArid(arid);
	}  

}
