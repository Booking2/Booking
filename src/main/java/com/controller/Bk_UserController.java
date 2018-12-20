package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Bk_user;
import com.service.Bk_userService;
/**
 * 
 * 用户控制层
 * */
@Controller
@RequestMapping("/bk_user")
public class Bk_UserController {
	
	public  String ifaces =null;
	 
	@Autowired
	private Bk_userService bk_userService;
	
	@RequestMapping("/bk_city/getlistbk_city")
	public String getlist(Model model) {
		return "BK_MiddleTop";
	}
	//转到登录注册界面
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
				return "redirect:/bk_city/getlistbk_city";
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
				return "redirect:/bk_city/getlistbk_city";
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
