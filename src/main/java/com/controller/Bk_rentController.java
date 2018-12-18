package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Bk_rent;
import com.service.Bk_rentService;

@Controller
public class Bk_rentController {

	@Autowired
	private Bk_rentService bk_rentService;
	
	@RequestMapping("/getlist")
	public String first() {
		
		return "BK_backgroundindex";
	}
	
	@RequestMapping("/addrent")
	public String insertSelective(Bk_rent rent) {
		
		
		return "BK_addRerent";
	}
}
