package com.kz.service;

import com.kz.dao.UserWinDao;
import com.kz.dao.impl.UserWinDaoImpl;
import com.kz.domain.UserWin;

public class UserWinService {
	
	private UserWinDao uwd = new UserWinDaoImpl();
	
	public UserWin getUserWinInfo(String id){
		UserWin existUW = uwd.getUserWinInfo(id);
		return existUW;
	}
	
	public void saveWin(UserWin uw){
		uwd.saveWin(uw);
	}
}
