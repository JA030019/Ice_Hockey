package com.kz.dao;

import java.util.List;

import com.kz.domain.Admin;
import com.kz.domain.User;

public interface AdminDao {
		//获取用户列表   
		public List<User> getAllUser();
		
		//获取管理员列表
		public List<Admin> getAllAdmin();
		
		//根据用户名查询管理员
		public Admin getUserByName(String name);
		
		//删除信息 method:1用户 2管理员 
		public boolean adminPowerDelete(String id, int method);
		
		//保存管理员对象
		public void save(Admin a);
}
