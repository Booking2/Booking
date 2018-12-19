package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Bk_rent;
import com.service.Bk_rentService;

@Controller
@RequestMapping("/bk_rent")
public class Bk_rentController {
	
	public String ephone;
    public String epassword;
	
	@Autowired
	private Bk_rentService bk_rentService;
	
	@RequestMapping("/getlist")
	public String first() {
		
		return "BK_backgroundindex";
	}
	
	@RequestMapping("/tz")
	public String tz(Bk_rent rent) {
		this.ephone = rent.getRephone();
		this.epassword = rent.getRepassword();
		return "BK_addRerent";
	}
	
	@RequestMapping("/addrent")
	public String insertSelective(Bk_rent rent) {
		rent.setRephone(ephone);
		rent.setRepassword(epassword);
		bk_rentService.insertSelective(rent);
		return "BK_addRerent";
	}
}
