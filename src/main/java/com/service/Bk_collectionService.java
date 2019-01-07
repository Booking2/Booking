package com.service;

import com.entity.Bk_collection;

//收藏夹业务逻辑层
public interface Bk_collectionService {
	int insert(Bk_collection record);
	
	int gethoidByhoid(Bk_collection record);
}
