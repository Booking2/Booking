package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Bk_hotel;
import com.service.Bk_hotelService;

@Controller
@RequestMapping("/bk_hotel")
public class Bk_hotelController {

	@Autowired
	private Bk_hotelService bk_hotelService;
	
	//添加酒店信息Bk_Hotel表
	@RequestMapping("/addHotel")
	public String getHotel(Bk_hotel hotel,HttpSession session) {
		if(hotel.getHoname() != null) {
			bk_hotelService.insertSelective(hotel);
			session.setAttribute("session2", "3");
		}
		
		return "BK_addRerent";
	}
}
