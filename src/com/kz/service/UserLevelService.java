package com.kz.service;

import com.kz.dao.UserLevelDao;
import com.kz.dao.impl.UserLevelDaoImpl;
import com.kz.domain.Userlevel;


public class UserLevelService {
	
	private UserLevelDao uld = new UserLevelDaoImpl();
	
	public Userlevel getUserLevelInfo(String id){
		Userlevel existUL = uld.getUserLevelInfo(id);
		return existUL;
	}
	
	public void save(Userlevel ul){
		uld.savelevel(ul);
	}
}
