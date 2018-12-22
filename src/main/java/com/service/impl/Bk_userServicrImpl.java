package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Bk_user;
import com.mapper.Bk_userMapper;
import com.service.Bk_userService;

@Service("bk_userService")
public class Bk_userServicrImpl implements Bk_userService {

	@Autowired
	private Bk_userMapper bk_userMapper;
	
	@Override
	public int insertSelective(Bk_user record) {
		return bk_userMapper.insertSelective(record);
	}

	@Override
	public Bk_user login(String uphone, String upassword) {
		return bk_userMapper.login(uphone, upassword);
	}

	@Override
	public int regiphone(String uphone) {
		return bk_userMapper.regiphone(uphone);
	}

	@Override
	public List<Bk_user> selectByPrimaryKey(Integer uid) {
		// TODO Auto-generated method stub
		return bk_userMapper.selectByPrimaryKey(uid);
	}

}
