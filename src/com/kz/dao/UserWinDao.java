package com.kz.dao;

import com.kz.domain.UserWin;


public interface UserWinDao {

	//根据id获取获奖信息
	public UserWin getUserWinInfo(String id);
	
	//添加用户获奖信息
	public void saveWin(UserWin uw);
}
