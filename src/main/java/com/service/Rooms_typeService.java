package com.service;
/*房间类型业务逻辑接口*/
import java.util.List; 
import com.entity.Rooms_type;

public interface Rooms_typeService {
	/*查询前四条*/
	List<Rooms_type> getlistRooms_type();
	/*查询后四条*/
	List<Rooms_type> getlistRooms_type1();
}
