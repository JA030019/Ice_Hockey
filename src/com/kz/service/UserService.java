package com.kz.service;


import java.util.List;
import com.kz.dao.UserDao;
import com.kz.dao.impl.UserDaoImpl;
import com.kz.domain.User;


public class UserService {
	
	private UserDao ud = new UserDaoImpl();
	
	public void regist(User u){
		//1  校验用户名不重复
		User existU = ud.getUserByName(u.getUsername());	
		
		if(existU != null){
			//用户名已经存在
			throw new RuntimeException("用户名已存在!!");
		}
		//2 调用dao,执行保存
		ud.save(u);
	}
	
	public User login(User u){
		//1 根据用户名,调用dao获得User对象
		User existU = ud.getUserByName(u.getUsername());
		if(existU==null){
			//没获得到=>用户名不存在=> 抛出异常
			throw new RuntimeException("用户名不存在!");
		}
		//2 比对密码是否一致
		if(!existU.getPassword().equals(u.getPassword())){
			//不一致=>密码不正确=>抛出异常
			throw new RuntimeException("密码不正确!");
		}
		//3 登录成功返回User对象
		return existU;		
	}
	
	public void updatePassword(int id, String newPassword){
		ud.updatePassword(id, newPassword);
	}
	
	public void updateBasicInfo(int id, String newProvince, String newEmail, String newPhone, String realname, String sex, String brith, String playexperience, String hold, String injury, String other){
		ud.updateBasicInfo(id, newProvince, newEmail, newPhone, realname, sex, brith, playexperience, hold, injury, other);
	}
	
	public User getUserById(int id){
		return ud.getUserById(id);
	}
	
	public User getUserById(String id){
		return ud.getUserById(id);
	}
	
	public List getAllLevel(int id){
		return ud.getAllLevel(id);
	}
	
	public List getAllWin(int id){
		return ud.getAllWin(id);
		
	}
	
	public List getAllQuality(int id){
		return ud.getAllQuality(id);
	}
	
	public List getAllCharacter(int id){
		return ud.getAllCharacter(id);
	}
}
