package com.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.math.RandomUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.entity.Bk_hotel;
import com.entity.Bk_pictures;
import com.service.Bk_hotelService;

@Controller
@RequestMapping("/bk_hotel")
public class Bk_hotelController {

	@Autowired
	private Bk_hotelService bk_hotelService;
	
	//添加酒店信息Bk_Hotel表
	@RequestMapping("/addHotel")
	public String getHotel(Bk_hotel hotel,HttpSession session) {
		if(hotel.getHoname() != null) {
			bk_hotelService.insertSelective(hotel);
			session.setAttribute("session2", "3");
		}
		
		return "BK_addRerent";
	}
	
	//添加酒店照片
	@RequestMapping("/imgs")
	public String imgsd(Bk_pictures bk_pictures,@RequestParam(value ="imgs", required = false) 	MultipartFile[] imgs,Model model,
			  HttpServletResponse response,HttpServletRequest request,HttpSession session,Integer currentPageNo,RedirectAttributes urbutes) {
		  String viewName="forward:/bk_hotel/BK_addRerent"; //转发 
		  String fileName = null;
		  for (int i = 0; i < imgs.length; i++) {
			  if (!imgs[i].isEmpty()) {
					String path = request.getSession().getServletContext().getRealPath(File.separator+"upload"); 	
					String oldFileName = imgs[i].getOriginalFilename();//获取文件的原名字	
					String prefix=FilenameUtils.getExtension(oldFileName);//原文件后缀     
					int filesize = 9000000;
					if(imgs[i].getSize() >  filesize){//上传大小不得超过 500k
						request.setAttribute("uploadPicError", " * 上传大小不得超过 500k");
						//超过大小不允许跳转，直接返回以前的视图页面
						return viewName;
					}else if(prefix.equalsIgnoreCase("jpg") || prefix.equalsIgnoreCase("png") || prefix.equalsIgnoreCase("PNG")
							|| prefix.equalsIgnoreCase("gif")||prefix.equalsIgnoreCase("jpeg")){//上传图片格式不正确
						fileName="head_"+System.currentTimeMillis()+RandomUtils.nextInt(1000000)+"."+prefix;
						File targetFile = new File(path, fileName);
						
						//保存  
						try {
							imgs[i].transferTo(targetFile);  
						} catch (Exception e) {  
							e.printStackTrace();  
							request.setAttribute("uploadPicError", " * 上传失败！");
							return viewName;
						}  
					}else{
						request.setAttribute("uploadPicError", " * 上传图片格式不正确");
						return viewName;
					}
					model.addAttribute("imgs", fileName);
			  }
		  }
		  session.setAttribute("session3", "4");
		  return "BK_addRerent";
		}
}
