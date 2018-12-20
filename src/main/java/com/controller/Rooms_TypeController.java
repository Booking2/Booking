package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Rooms_type;
import com.service.Rooms_typeService;

@Controller
@RequestMapping("/rooms_type")
public class Rooms_TypeController {
	@Autowired
    private Rooms_typeService rooms_typeService;
    
	/*查询前四条数据*/
	@ResponseBody
	@RequestMapping("/getlistroomstype")
	public List<Rooms_type> getlistroomstype(HttpServletRequest request,HttpServletResponse response)throws IOException{
		List<Rooms_type> getRoomstype = rooms_typeService.getlistRooms_type();
		return getRoomstype; 
	}
	
	/*查询后四条数据*/
	@ResponseBody
	@RequestMapping("/getlistroomstype1")
	public List<Rooms_type> getlistroomstype1(HttpServletRequest request,HttpServletResponse response)throws IOException{
		List<Rooms_type> getRoomstype = rooms_typeService.getlistRooms_type1();
		return getRoomstype; 
	}
}
