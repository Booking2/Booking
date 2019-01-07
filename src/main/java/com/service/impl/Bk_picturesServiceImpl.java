package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Bk_pictures;
import com.mapper.Bk_picturesMapper;
import com.service.Bk_picturesService;

@Service("bk_picturesService")
public class Bk_picturesServiceImpl implements Bk_picturesService {

	@Autowired
	public Bk_picturesMapper bk_picturesMapper;
	
	@Override
	public int insertSelective(Bk_pictures record) {
		// TODO Auto-generated method stub
		return bk_picturesMapper.insertSelective(record);
	}

	@Override
	public List<Bk_pictures> getpicturesByHoid(Integer hoid) {
		// TODO Auto-generated method stub
		return bk_picturesMapper.getpicturesByHoid(hoid);
	}

}
