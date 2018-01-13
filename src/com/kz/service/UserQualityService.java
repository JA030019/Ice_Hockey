package com.kz.service;

import com.kz.dao.UserQualityDao;
import com.kz.dao.impl.UserQualityDaoImpl;
import com.kz.domain.UserQuality;

public class UserQualityService {
	
	private UserQualityDao uqd = new UserQualityDaoImpl();
	
	public void saveQuality(UserQuality uq){
		uqd.saveQuality(uq);
	}
}
