package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Bk_hotel;
import com.entity.Bk_pictures;
import com.entity.Bk_rooms;
import com.service.Bk_hotelSerivce;
import com.service.Bk_picturesService;
import com.service.Bk_roomsService;

@Controller
@RequestMapping("/bk_pictures")
public class Bk_picturesController {
	public Integer hoid;
	
	@Autowired
    private Bk_picturesService bk_picturesService;
	//酒店业务逻辑层
	@Autowired
	private Bk_hotelSerivce bk_hotelSerivce;
	
	//房间业务逻辑层
	@Autowired
	private Bk_roomsService bk_roomsService;
	
	//酒店id查询酒店图片功能
	@RequestMapping("/getpicturesByHoid")
	public String getpicturesByHoid(Integer hoid, Model model,Model model1) {
		List<Bk_pictures> getpictures = bk_picturesService.getpicturesByHoid(hoid);
		//根据酒店id搜索联机(首页>湖南)
		System.out.println();
		List<Bk_hotel> gethotelAll  = bk_hotelSerivce.gethotelAllByhoid(hoid); 
		//根据酒店id查它下的所有空房间
		List<Bk_rooms> getroomall = bk_roomsService.getAll(hoid);
		model.addAttribute("getpictures", getpictures);
		model.addAttribute("gethotelAll", gethotelAll); 
		model.addAttribute("getroomall", getroomall);
		this.hoid = hoid;
		return "BK_Room";
	}
	
	//根据时间显示房间信息功能
	@RequestMapping("/getroomsbytime")
	@ResponseBody
	public List<Bk_rooms> getroomsbytime(String Rstaydate,String Rcheckdate){
		System.out.println(Rstaydate+"\t"+Rcheckdate+"\t"+this.hoid);
		List<Bk_rooms> allbytime = bk_roomsService.getAllbytime(Rstaydate, this.hoid);
		return allbytime;
	}
	
	//填写注册信息预订（入口）
	@RequestMapping("/bkmyinformation")
	public String bkmyinformation(Integer[] rid,Integer[] value,Integer uid,Integer hoid,Integer[] sumrcheckin,String Rstaydate1, String Rcheckdate1,HttpSession session) {
		for(int i = 0; i < rid.length; i++) {
			if(null != rid[i]) {
				System.out.println("id"+ rid[i]);
			}
		}
		for(int i = 0; i < value.length; i++) {
			if(null != value[i]) {
				System.out.println("值"+value[i]);
			}
		} 
		//人数 
		int sumren = 0;
		for(int i = 0; i < sumrcheckin.length; i++) { 
			if(null != sumrcheckin[i]) {
			  sumren += sumrcheckin[i];
			}
			 
		} 
		System.out.println("人数"+sumren);
		session.setAttribute("list",uid + "," +hoid+ "," + sumren);
		session.setAttribute("ridlist", rid );
		session.setAttribute("date", Rstaydate1 + "-" +Rcheckdate1); 
		return "BK_Myinformation";
	}
}
