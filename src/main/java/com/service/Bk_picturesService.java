package com.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.entity.Bk_pictures;

public interface Bk_picturesService {

	//添加图片
	 int insertSelective(Bk_pictures record);
	
	//酒店id查询酒店图片功能
	 List<Bk_pictures> getpicturesByHoid(Integer hoid);
}
