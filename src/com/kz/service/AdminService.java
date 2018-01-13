package com.kz.service;

import java.util.List;

import com.kz.dao.AdminDao;
import com.kz.dao.impl.AdminDaoImpl;
import com.kz.domain.Admin;
import com.kz.domain.User;

public class AdminService {
	
	private AdminDao ad = new AdminDaoImpl();
	
	public Admin login(Admin a){
		//1 根据用户名,调用dao获得User对象
		Admin existA = ad.getUserByName(a.getAdminname());
		if(existA==null){
		//没获得到=>用户名不存在=> 抛出异常
		throw new RuntimeException("用户名不存在!");
		}
		//2 比对密码是否一致
		if(!existA.getPassword().equals(a.getPassword())){
			//不一致=>密码不正确=>抛出异常
			throw new RuntimeException("密码不正确!");
		}
		//3 登录成功返回User对象
		return existA;		
	}
	
	public void register(Admin a){
		Admin existA = ad.getUserByName(a.getAdminname());
		if(existA != null){
			//用户名已经存在
			throw new RuntimeException("用户名已存在!");
		}
		//2 调用dao,执行保存
			ad.save(a);
	}
	
	public List<User> getAllUser(){
		return ad.getAllUser();
	}
	
	public List<Admin> getAllAdmin(){
		return ad.getAllAdmin();
	}
	
	public boolean adminPowerDelete(String id, int method){
		boolean res = ad.adminPowerDelete(id, method);
		return res;
			
	}
}
