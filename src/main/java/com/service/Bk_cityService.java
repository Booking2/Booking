package com.service;

import java.util.List;
 
import com.entity.Bk_city;
import com.entity.Bk_hotel;

public interface Bk_cityService {
	
	List<Bk_city> getlistcity();
	
	List<Bk_city> getlistcity1();
	
	List<Bk_city> getlistcity2();
	
	//获得所有城市
	List<Bk_city> getCityAll();
}
