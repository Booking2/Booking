package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Bk_rooms;
import com.mapper.Bk_roomsMapper;
import com.service.Bk_roomsService;

@Service("bk_roomsService")
public class Bk_roomsServiceImpl implements Bk_roomsService {
    
	@Autowired
	private Bk_roomsMapper bk_roomsMapper;
	
	//查询所有房间
	@Override
	public List<Bk_rooms> getAll(Integer hoid) {
		// TODO Auto-generated method stub
		return bk_roomsMapper.getAll(hoid);
	}

}
