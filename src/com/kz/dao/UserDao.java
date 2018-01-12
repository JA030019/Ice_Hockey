package com.kz.dao;

import java.util.List;
import com.kz.domain.User;


public interface UserDao {
	//保存用户对象
	public void save(User u);
	
	//根据用户名查询用户
	public User getUserByName(String name);
	
	//根据id更新用户
	public User getUserById(int id);
	
	public User getUserById(String id);
	
	//修改用户基本信息
	public void updateBasicInfo(int id, String province, String newEmail,String newPhone, String realname, String sex, String brith, String playexperience, String hold, String injury, String other);
	
	//修改用户密码
	public void updatePassword(int id, String newPassword);
	
	//根据用户id查询该用户所有等级证书
	public List getAllLevel(int id);
	
	//根据用户id查询该用户所有获奖信息
	public List getAllWin(int id);
	
	//根据用户id查询该用户所有素质测试信息
	public List getAllQuality(int id);
	
	//根据用户id查询该用户所有品格测试得分
	public List getAllCharacter(int id);
	
}
