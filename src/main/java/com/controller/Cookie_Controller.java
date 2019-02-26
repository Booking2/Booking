package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Cookie_Controller {
     
	/**
	 * 通过session实现多页面共享数据[日期]
	 * @param rstaydate
	 * @param rcheckdate
	 * @param session
	 * @return
	 */
	@RequestMapping("/getcookie")
	@ResponseBody
	 public String getcookie(String rstaydate,String rcheckdate,HttpSession session) {
		session.removeAttribute("timesession");//清空session信息
		 if(rstaydate != null && rcheckdate != null) { 
			 session.setAttribute("timesession",rstaydate + "——"+rcheckdate);
		 }
		 return rstaydate + "——"+rcheckdate;
	 }
	 
	/**
	 * 通过session实现多页面共享数据[酒店名称]
	 */
	 @RequestMapping("/getname")
	 @ResponseBody
	 public String getname(String name,HttpSession session) {
		 session.removeAttribute("namesession");//清空session信息
		 if(name != null  ) { 
			 session.setAttribute("namesession",name);
		 }
		 return name; 
	 }
}
