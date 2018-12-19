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
import com.service.Bk_cityService;
 

@Controller
@RequestMapping("/bk_city")
public class Bk_cityController {
	
	  protected static Logger LOG = Logger.getLogger(Bk_cityController.class);
	
	 @Autowired
     private Bk_cityService bk_cityService;
	 
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
	 
	 
	 
}
