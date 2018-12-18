package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Bk_rent;
import com.mapper.Bk_rentMapper;
import com.service.Bk_rentService;

@Service("bk_rentService")
public class Bk_rentServiceImpl implements Bk_rentService {

	@Autowired
	private Bk_rentMapper bk_rentMapper;
	
	@Override
	public int insertSelective(Bk_rent record) {
		// TODO Auto-generated method stub
		return bk_rentMapper.insertSelective(record);
	}

}
