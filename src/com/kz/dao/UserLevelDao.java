package com.kz.dao;

import com.kz.domain.Userlevel;

public interface UserLevelDao {
	
	//根据id获取详细等级证书信息
	public Userlevel getUserLevelInfo(String id);
	
	//添加等级证书信息
	public void savelevel(Userlevel ul);
}
