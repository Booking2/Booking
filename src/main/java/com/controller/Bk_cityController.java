package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Bk_area;
import com.entity.Bk_city;
import com.entity.Bk_hotel;
import com.entity.Hotel_type;
import com.service.Bk_areaService;
import com.entity.Bk_user;
import com.service.Bk_cityService;
import com.service.Hotel_typeService;
import com.service.Bk_hotelSerivce;
import com.service.Bk_userService;
 
/**
 *   市区控制层
 * 
 * */
@Controller
@RequestMapping("/bk_city")
public class Bk_cityController {
	
	  protected static Logger LOG = Logger.getLogger(Bk_cityController.class);
	  
	  //全局对象
	  List<Bk_city> listcity = null;
	  
	 //用户业务逻辑层
	 @Autowired
	 private Bk_userService bk_userService;
	 //市区业务逻辑层
	 @Autowired
     private Bk_cityService bk_cityService;
	 

	 @Autowired
	 private Bk_areaService bk_areaService;
	 
	 @Autowired
	 private Hotel_typeService hotel_typeService;
	 
	//酒店业务逻辑层
	 @Autowired
	 private Bk_hotelSerivce bk_hotelSerivce;
	 
	 //测试
	 @RequestMapping("/get")
	 public String get() { 
		 return "BK_SumHolet";
	 }
	 //打开首页
     //首页 市 两条数据
	 @RequestMapping("/getlistbk_city")
	 public String getlistbk_city(Model model,Integer uid,HttpSession session) {
		 List<Bk_city> getlistcity = bk_cityService.getlistcity();
		 model.addAttribute("getlistcity", getlistcity); 
		 //根据用户id显示用户信息
		 List<Bk_user> selectByPrimaryKey = bk_userService.selectByPrimaryKey(uid);
		//根据id用户详细信息
		 model.addAttribute("selectByPrimaryKey", selectByPrimaryKey);  
		//清除session
		 /*session.removeAttribute("sessionuid");*/
		//用户图片
		 for(int i=0; i<selectByPrimaryKey.size(); i++) {
			 Bk_user bk_user = selectByPrimaryKey.get(i);
			 System.out.println(bk_user.getUphoto());
			 session.setAttribute("sessionphoto",bk_user.getUphoto());  
		 }
		
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

	 //首页单击市区显示酒店功能
	 @RequestMapping("/citybycityid")
	 public String citybycityid(Model model,Integer ciid){
		 listcity = bk_cityService.getlistcitybycityid(ciid); 
		 model.addAttribute("listcity", listcity);
		 return "BK_SumHolet";
	 }
	 
	 ////首页单击市区显示酒店详情功能 
	 @RequestMapping("/gethotelByArid")
	 @ResponseBody
	 public List<Bk_hotel> gethotelByArid(Model model2,HttpServletRequest request,HttpServletResponse response){
		 List<Bk_hotel> gethotelByArid =null; 
		 if(listcity!=null) {
			 for(int i=0; i<listcity.size(); i++) {
				 System.out.println(listcity.size());
				  Bk_city bk_city = listcity.get(i);
				  System.out.println(bk_city.getArid());
				  gethotelByArid = bk_hotelSerivce.gethotelByArid(bk_city.getArid()); 
				  return gethotelByArid;
			 } 
		 }else {
			 System.out.println("没有数据");
		 }
		return gethotelByArid;
	 }
}
