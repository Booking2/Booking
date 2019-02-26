package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Bk_collection;
import com.service.Bk_collectionService;

//收藏夹controller
@Controller
@RequestMapping("/bk_conllection")
public class Bk_ConllectionController {
	   //收藏业务逻辑层
		@Autowired
		private Bk_collectionService bk_collectionService;
		
		//添加收藏
		@RequestMapping("/AllConection")
		@ResponseBody
		public int AllConection(Integer hoid,Integer uid,HttpServletRequest request,HttpServletResponse response) {
			Bk_collection collection = new Bk_collection();
			collection.setHoid(hoid);
			collection.setUid(uid);
			int insert = bk_collectionService.insert(collection);
			return insert;
		} 
		//判断数据库是否有该值
		@RequestMapping("/gethoidByhoid")
		@ResponseBody
		public int gethoidByhoid(Integer hoid,Integer uid,HttpServletRequest request,HttpServletResponse response){
			Bk_collection collection = new Bk_collection();
			collection.setHoid(hoid);
			collection.setUid(uid);
			int gethoidByhoid = bk_collectionService.gethoidByhoid(collection);
			return gethoidByhoid;
		}
}
