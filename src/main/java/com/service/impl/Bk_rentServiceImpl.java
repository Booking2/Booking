package com.service.impl;

import java.util.List;

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

	@Override
	public int selectLogin(Bk_rent record) {
		// TODO Auto-generated method stub
		return bk_rentMapper.selectLogin(record);
	}

	@Override
	public int selectPhone(String phone) {
		// TODO Auto-generated method stub
		return bk_rentMapper.selectPhone(phone);
	}

	@Override
	public List<Bk_rent> selectAll() {
		// TODO Auto-generated method stub
		return bk_rentMapper.selectAll();
	}

}
