package com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

/*房间类型数据访问层接口*/
import com.entity.Rooms_type;

@Mapper
public interface Rooms_typeMapper {
    int deleteByPrimaryKey(Integer rtid);

    int insert(Rooms_type record);

    int insertSelective(Rooms_type record);

    Rooms_type selectByPrimaryKey(Integer rtid);

    int updateByPrimaryKeySelective(Rooms_type record);

    int updateByPrimaryKey(Rooms_type record);
    
    @Select("SELECT * FROM rooms_type LIMIT 0,4")
    List<Rooms_type> getlistRooms_type();
    
    @Select("SELECT * FROM rooms_type LIMIT 4,8")
    List<Rooms_type> getlistRooms_type1();
    
    @Select("SELECT Rtid,Rttypename FROM rooms_type")
    List<Rooms_type> getlistRooms_type2();
}