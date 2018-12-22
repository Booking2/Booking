package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Rooms_type;
import com.mapper.Rooms_typeMapper;
import com.service.Rooms_typeService;

@Service("rooms_typeService")
public class Rooms_typeServiceImpl implements Rooms_typeService {
	
	@Autowired
    private Rooms_typeMapper rooms_typeMapper;
	
	@Override
	public List<Rooms_type> getlistRooms_type() {
		// TODO Auto-generated method stub
		return rooms_typeMapper.getlistRooms_type();
	}

	@Override
	public List<Rooms_type> getlistRooms_type1() {
		// TODO Auto-generated method stub
		return rooms_typeMapper.getlistRooms_type1();
	}

}
