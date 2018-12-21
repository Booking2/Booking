package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Bk_area;
import com.entity.Bk_city;
import com.entity.Bk_hotel;
import com.entity.Hotel_type;
import com.service.Bk_areaService;
import com.service.Bk_cityService;
import com.service.Hotel_typeService;
 

@Controller
@RequestMapping("/bk_city")
public class Bk_cityController {
	
	  protected static Logger LOG = Logger.getLogger(Bk_cityController.class);
	
	 @Autowired
     private Bk_cityService bk_cityService;
	 
	 @Autowired
	 private Bk_areaService bk_areaService;
	 
	 @Autowired
	 private Hotel_typeService hotel_typeService;
	 
     //首页 市 两条数据
	 @RequestMapping("/getlistbk_city")
	 public String getlistbk_city(Model model) {
		 List<Bk_city> getlistcity = bk_cityService.getlistcity();
		 model.addAttribute("getlistcity", getlistcity);
		 return "BK_MiddleTop";
	 }
	 
	 //首页  市 三条数据
	 @RequestMapping( value ="/getlistbk_city1",method=RequestMethod.POST)
	 @ResponseBody
	 public List<Bk_city> getlistbk_city1(Model model,HttpServletRequest request,HttpServletResponse response)throws IOException {
		 List<Bk_city> getlistcity1 = bk_cityService.getlistcity1();  
		 model.addAttribute("getlistcity1", getlistcity1);
	     return  getlistcity1;
	 }
	 
	 //不感兴趣
	 @RequestMapping( value ="/getlistbk_city2",method=RequestMethod.POST)
	 @ResponseBody
	 public List<Bk_city> getlistbk_city2(HttpServletRequest request,HttpServletResponse response)throws IOException {
		 List<Bk_city> getlistcity2 = bk_cityService.getlistcity2();  
	     return  getlistcity2;
	 }
	 
	 //引用房间类型
	 @RequestMapping("/getrooms")
	 public String getrooms() { 
		 return "BK_Rooms";
	 } 
	 
	 //查询所有城市
	 @RequestMapping("/getCityAll")
	 @ResponseBody
	 public List<Bk_city> getCityAll(HttpServletRequest request,HttpServletResponse response) {
		 List<Bk_city> cityAll = bk_cityService.getCityAll();
		 return cityAll;
	 }
	 
	//查询城市下的区Bk_AreaAll表
	@RequestMapping("/getAreaAll")
	@ResponseBody
	public List<Bk_area> getAreaAll(HttpServletRequest request,HttpServletResponse response,Integer Ciid) {
		List<Bk_area> areaAll = bk_areaService.getAreaAll(Ciid);
		return areaAll;
	}
	
	//查询酒店类型Hotel_type表
	@RequestMapping("/getHoteltypeAll")
	@ResponseBody
	public List<Hotel_type> getHoteltypeAll(HttpServletRequest request,HttpServletResponse response){
		List<Hotel_type> hotelTypeAll = hotel_typeService.getHotelTypeAll();
		return hotelTypeAll;
	}
	 
	 
}
