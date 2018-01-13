package com.kz.service;

import com.kz.dao.UserCharacterDao;
import com.kz.dao.impl.UserCharacterDaoImpl;
import com.kz.domain.UserCharacter;

public class UserCharacterService {
	
	private UserCharacterDao ucd = new UserCharacterDaoImpl();
	
	public void saveCharacter(UserCharacter uc){
		ucd.saveQuality(uc);
	}
}
