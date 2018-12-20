package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Bk_city;
import com.entity.Bk_hotel;
import com.service.Bk_cityService;
import com.service.Bk_hotelSerivce;
 
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
	  
	 //市区业务逻辑层
	 @Autowired
     private Bk_cityService bk_cityService;
	 
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
			 for(int i=0; i<listcity.size(); i++ ) {
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
