package com.controller;

import java.io.IOException;
import java.util.ArrayList;
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

import com.entity.Bk_city;
import com.entity.Bk_hotel;
import com.entity.Bk_user;
import com.service.Bk_cityService;
import com.service.Bk_hotelSerivce;
import com.service.Bk_userService;
import com.tools.PageTool;
 
/**
 *   市区控制层
 * 
 * */
@Controller
@RequestMapping("/bk_city")
public class Bk_cityController {
	
	  protected static Logger LOG = Logger.getLogger(Bk_cityController.class);
	  
	  //全局对象 - 变量
	  List<Bk_city> listcity = null;
	  Integer ciid ;
	  Integer currentPageNos;
	  PageTool pagetool =  new PageTool(); 
	 //用户业务逻辑层
	 @Autowired
	 private Bk_userService bk_userService;
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
	 public List<Bk_city> getlistbk_city2(HttpServletRequest request,HttpServletResponse response,Integer ciid)throws IOException {
		 List<Bk_city> getlistcity2 = bk_cityService.getlistcity2(ciid);  
	     return  getlistcity2;
	 }
	 
	 //引用房间类型
	 @RequestMapping("/getrooms")
	 public String getrooms() { 
		 return "BK_Rooms";
	 } 
	 
	 //首页单击市区显示酒店功能 市区
	 @RequestMapping("/citybycityid")
	 public String citybycityid(HttpServletRequest request,Model model,Integer ciid,Integer currentPageNo){
		 listcity = bk_cityService.getlistcitybycityid(ciid); 
		 
		 HttpSession session = request.getSession();       //先创建session
		 request.getSession().removeAttribute("pageTool"); //清空session
		 if(this.ciid == ciid) { //市id（全局）  “/gethotelByArid” 接受获取                     
			 this.ciid = ciid;
		}else {
			 session.removeAttribute("pageTool"); //清空session
			 this.ciid = ciid;
		 } 
		 if(null == currentPageNo) { //如果currentPageNo(当前页面-用户输入)为空
			 currentPageNo = 1; //设置默认值 1
			  this.currentPageNos = currentPageNo;  //再将currentPageNo赋值给全局currentPageNos
		  } else {
			  this.currentPageNos = currentPageNo;//如果currentPageNo不为空，将 传过来的值赋值给全局currentPageNos
		  }
		  Integer counthotleid2 = bk_hotelSerivce.counthotleid(this.ciid);  //分页酒店总数
		 
		  if(counthotleid2 != null && counthotleid2 != 0) {
			  pagetool.setTotalCount(counthotleid2);    //pagetool分页辅助类
		  }else { 
			  pagetool.setTotalCount(counthotleid2); 
		  }
		  //System.out.println("asas"+ currentPageNos  );
		  pagetool.setCurrentPageNo(currentPageNos); //pagetool分页辅助类 
		  session.setAttribute("pageTool", pagetool);  //给session赋值，page.jsp
		  model.addAttribute("listcity", listcity);   //创建model
		  return "BK_SumHolet";
	 }
	 
	 ////首页单击市区显示酒店详情功能  酒店
	 @RequestMapping("/gethotelByArid")
	 @ResponseBody
	 public List<Bk_hotel> gethotelByArid(HttpServletRequest request,HttpServletResponse response){
		 List<Bk_hotel> gethotelByArid = new ArrayList<Bk_hotel>(); 
		 if(listcity!=null) {     
				  //System.out.println(ciid + "\t" + currentPageNos + "\t" +pagetool.getPageSize());
				  gethotelByArid = bk_hotelSerivce.gethotelByArid(ciid,pagetool.getCurrentPageNo(),pagetool.getPageSize()); 
		}  
		return gethotelByArid;  
	 }
	 
	 ///酒店id查找酒店图片，评分
	 @RequestMapping("/getpipictureAndsscoreById")
	 @ResponseBody
	 public List<Bk_hotel> getpipictureAndsscoreById(Integer hoid,HttpServletRequest request,HttpServletResponse response){
		   List<Bk_hotel>  pipictureAndsscore  = bk_hotelSerivce.getpipictureAndsscoreById(hoid);
		 return pipictureAndsscore;
	 }
	 
	 //搜索联想功能
	 @RequestMapping("/gethoname")
	 @ResponseBody
	 public List<Bk_hotel> gethoname(String honame,HttpServletRequest request,HttpServletResponse response){
		 List<Bk_hotel> gethonameByhoname = bk_hotelSerivce.gethonameByhoname(honame);
		 return gethonameByhoname;
	 }
}
