package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Bk_rent;
import com.mysql.cj.Session;
import com.mysql.cj.protocol.ServerSession;
import com.service.Bk_rentService;

@Controller
@RequestMapping("/bk_rent")
public class Bk_rentController {
	
	 
	public String ephone;
    public String epassword;
	
	@Autowired
	private Bk_rentService bk_rentService;
	
	//进入后台
	@RequestMapping("/getlist")
	public String first(HttpSession session) {
		session.removeAttribute("session");
		session.removeAttribute("session2");
		session.invalidate(); 
		return "BK_backgroundindex";
	}
	
	//跨页面传值中转站
	@RequestMapping("/tz")
	public String tz(Bk_rent rent) {
		this.ephone = rent.getRephone();
		this.epassword = rent.getRepassword(); 
		return "BK_addRerent";
	}
	
	
	//保存酒店拥有人的个人信息
	@RequestMapping("/addrent")
	public String insertSelective(Bk_rent rent,Model model,HttpSession session) {
		rent.setRephone(ephone);
		rent.setRepassword(epassword);
		session.setAttribute("honame",rent.getRerentname());
		if(rent.getRecontact() != null) {
			bk_rentService.insertSelective(rent);
			session.setAttribute("session", "2");
		}
		model.addAttribute("Reid", rent.getReid());
		
		
		return "BK_addRerent";
	}
	
}
