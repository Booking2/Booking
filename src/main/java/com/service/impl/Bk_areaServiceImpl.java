package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Bk_area;
import com.mapper.Bk_areaMapper;
import com.service.Bk_areaService;

@Service("bk_areaService")
public class Bk_areaServiceImpl implements Bk_areaService {

	@Autowired
	private Bk_areaMapper bk_areaMapper;
	
	@Override
	public List<Bk_area> getAreaAll(Integer Ciid) {
		// TODO Auto-generated method stub
		return bk_areaMapper.getAreaAll(Ciid);
	}

}
