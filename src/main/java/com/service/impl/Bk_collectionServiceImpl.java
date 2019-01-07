package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.Bk_collection;
import com.mapper.Bk_collectionMapper;
import com.service.Bk_collectionService;

@Service("bk_collectionService")
public class Bk_collectionServiceImpl implements Bk_collectionService {
    
	@Autowired
	private Bk_collectionMapper bk_collectionMapper;
    
	@Override
	public int insert(Bk_collection record) {
		// TODO Auto-generated method stub
		return bk_collectionMapper.insert(record);
	}

	@Override
	public int gethoidByhoid(Bk_collection record) {
		// TODO Auto-generated method stub
		return bk_collectionMapper.gethoidByhoid(record);
	}

}
