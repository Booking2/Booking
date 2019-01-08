package com.service;

import java.util.List;

import com.entity.Bk_rooms;

public interface Bk_roomsService {
	//查询所有房间
    List<Bk_rooms> getAll(Integer hoid);
}
