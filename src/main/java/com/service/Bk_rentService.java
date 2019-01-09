package com.service;

import java.util.List;

import com.entity.Bk_rent;

public interface Bk_rentService {

	int insertSelective(Bk_rent record);
	
	int selectLogin(Bk_rent record);
	
	int selectPhone(String phone);
	
	//查询个人信息
	List<Bk_rent> selectAll();
}
