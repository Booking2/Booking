package com.service;

import org.apache.ibatis.annotations.Param;

import com.entity.Bank;
import com.entity.Bk_user;

public interface Bk_userService {
	//注册
	int insertSelective(Bk_user record);
	//登陆
	Bk_user login(@Param("uphone") String uphone,@Param("upassword") String upassword);
	//手机号码是否注册过
	int  regiphone(@Param("uphone") String uphone);
}
