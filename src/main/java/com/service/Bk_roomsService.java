package com.service;

import java.util.List;

import com.entity.Bk_rooms;

public interface Bk_roomsService {
	//根据酒店id查询所有空房间间
    List<Bk_rooms> getAll(Integer hoid);
    
    //根据时间查询所有空房间
    List<Bk_rooms> getAllbytime(String Rstaydate,Integer hoid);
}
