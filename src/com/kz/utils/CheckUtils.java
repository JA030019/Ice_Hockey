package com.kz.utils;

import java.util.HashMap;
import java.util.Map;

import com.kz.domain.User;

public class CheckUtils {
	
	public static Map<String,String>  checkUser(User u){
		Map<String,String>  map = new HashMap<String, String>();
		//验证用户名不为空
		if(u.getUsername() == null || "".equals(u.getUsername().trim())){
			map.put("name", "用户名不能为空!");
		}
		//验证密码不为空
		if(u.getPassword() == null || "".equals(u.getPassword().trim())){
			map.put("password", "密码不能为空!");
		}
		return map;
	}
}
