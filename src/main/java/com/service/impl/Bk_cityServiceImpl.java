package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Bk_city;
import com.mapper.Bk_cityMapper;
import com.service.Bk_cityService;

@Service("bk_cityService")
public class Bk_cityServiceImpl implements Bk_cityService {
    
	@Autowired
	private Bk_cityMapper bk_cityMapper;
    
	//随机产生两条
	@Override
	public List<Bk_city> getlistcity() {
		// TODO Auto-generated method stub
		return bk_cityMapper.getlistcity();
	}
    
	//随机产生三条
	@Override
	public List<Bk_city> getlistcity1() {
		// TODO Auto-generated method stub
		return bk_cityMapper.getlistcity1();
	}
     
	//随机产生一条
	@Override
	public List<Bk_city> getlistcity2() {
		// TODO Auto-generated method stub
		return bk_cityMapper.getlistcity2();
	}
    
	//首页单击市区显示酒店功能
	@Override
	public List<Bk_city> getlistcitybycityid(Integer ciid) {
		// TODO Auto-generated method stub
		return bk_cityMapper.getlistcitybycityid(ciid);
	}

	 

	//查询所有城市
	@Override
	public List<Bk_city> getCityAll() {
		// TODO Auto-generated method stub
		return bk_cityMapper.getCityAll();
	}

	 
	 

}
