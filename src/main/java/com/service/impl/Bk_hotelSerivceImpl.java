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
	public List<Bk_hotel> gethotelByArid(Integer arid,Integer stratIndex,Integer pageSize) {
		// TODO Auto-generated method stub
		Integer currentPageNos = (stratIndex-1)*pageSize;
		return bk_hotelMapper.gethotelByArid(arid,currentPageNos,pageSize);
	}

	@Override
	public int counthotleid(Integer ciid) {
		// TODO Auto-generated method stub
		return bk_hotelMapper.counthotleid(ciid);
	}

	@Override
	public List<Bk_hotel> getpipictureAndsscoreById(Integer hoid) {
		// TODO Auto-generated method stub
		return bk_hotelMapper.getpipictureAndsscoreById(hoid);
	}

	@Override
	public List<Bk_hotel> gethonameByhoname(String honame) {
		// TODO Auto-generated method stub
		return bk_hotelMapper.gethonameByhoname(honame);
	}

	@Override
	public List<Bk_hotel> gethotelAllByhoid(Integer hoid) {
		// TODO Auto-generated method stub
		return bk_hotelMapper.gethotelAllByhoid(hoid);
	}
 

}
