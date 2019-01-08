package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Bk_collection;
import com.entity.Bk_hotel;
import com.entity.Bk_pictures;
import com.entity.Bk_rooms;
import com.service.Bk_cityService;
import com.service.Bk_collectionService;
import com.service.Bk_hotelSerivce;
import com.service.Bk_picturesService;
import com.service.Bk_roomsService;

@Controller
@RequestMapping("/bk_pictures")
public class Bk_picturesController {
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
		return "BK_Room";
	}
	
	 
}
