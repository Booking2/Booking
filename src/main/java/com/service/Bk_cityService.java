package com.service;

import java.util.List;

import com.entity.Bk_city;

public interface Bk_cityService {
	
	List<Bk_city> getlistcity();
	
	List<Bk_city> getlistcity1();

	List<Bk_city> getlistcity2(Integer ciid);
	 
	
	//获得所有城市
	List<Bk_city> getCityAll();
	List<Bk_city> getlistcitybycityid(Integer ciid);

}
