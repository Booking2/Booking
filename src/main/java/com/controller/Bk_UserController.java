package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		//注册
		@RequestMapping("regon")
		public String regon(Bk_user record,HttpServletResponse response,HttpServletRequest request, Model model,HttpSession session) {
			System.out.println(record.getUname()+record.getUpassword()+record.getUphone());
			record.setUphoto("or.png");  //设置默认图片
			int i = bk_userService.insertSelective(record); 
			if(i > 0) {   
				model.addAttribute("records", record.getUid());
				System.out.println(record.getUid());
				/*
				 * 数据保存session中，避免刷新页面数据被清除
				 * 
				 * */
				session.setAttribute("sessionuid", record.getUid());
				return "redirect:/bk_city/getlistbk_city?uid="+record.getUid();
			}
			return "index";
		}
		//登陆
		@RequestMapping("login")
		public String login(String uphone,String upassword,
				HttpServletResponse response,HttpServletRequest request,Model model,HttpSession session
				) {
			System.out.println(uphone+upassword);
			Bk_user user = bk_userService.login(uphone, upassword);
			if(user != null) {
				session.setAttribute("sessionuid", user.getUid());
				return "redirect:/bk_city/getlistbk_city?uid="+user.getUid();
			}
			ifaces = "login";
			return "redirect:reg";
		}
		
		//判断手机号码是否已存在
		@ResponseBody
		@RequestMapping("uphone")
		public int upload (String uphone) {
			int  user = bk_userService.regiphone(uphone);
			return user;
		}
		
		//个人中心  入口处
		@RequestMapping("/Mycentre")
		public String Mycentre() {
			
			return "Mycentre";
		}
		
		//退出账号、个人中心 
		@RequestMapping("/close")
		public String close() {
			
			return "BK_Close";
		}
}
