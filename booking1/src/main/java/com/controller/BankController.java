package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Bank;
import com.entity.Bk_user;
import com.mapper.Bk_userMapper;
import com.service.BankService;
import com.service.Bk_userService;


@Controller
public class BankController {
	public  String ifaces =null;
    
	@Autowired
	private BankService bankService;
	
	@Autowired
	private Bk_userService bk_userService;
	
	@RequestMapping("/getlist")
	public String getlist(Model model) {
		return "BK_MiddleTop";
	}
	
	@RequestMapping("/reg")
	public String reg(HttpServletRequest request, Model model) {
		String iface = request.getParameter("Iface");
		if(iface != null) {
			System.out.println(iface+"123456");
			model.addAttribute("iface",iface);
		}
		if(ifaces != null) {
			model.addAttribute("iface",ifaces);
			ifaces = null;
			request.setAttribute("uploadPicError", "账号不存在或密码错误");
		}
		return "index";
	}
	@RequestMapping("regon")//注册
	public String regon(Bk_user record,HttpServletResponse response,HttpServletRequest request, Model model) {
		System.out.println(record.getUname()+record.getUpassword()+record.getUphone());
		int i = bk_userService.insertSelective(record);
		if(i > 0) {
			return "redirect:getlist";
		}
		return "index";
	}
	@RequestMapping("login")//登陆
	public String login(String uphone,String upassword,
			HttpServletResponse response,HttpServletRequest request,Model model
			) {
		System.out.println(uphone+upassword);
		Bk_user user = bk_userService.login(uphone, upassword);
		if(user != null) {
			return "redirect:getlist";
		}
		ifaces = "login";
		return "redirect:reg";
	}
	
	@ResponseBody
	@RequestMapping("uphone")//判断手机号码是否已存在
	public int upload (String uphone) {
		int  user = bk_userService.regiphone(uphone);
		return user;
	}
}
