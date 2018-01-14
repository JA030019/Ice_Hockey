package com.kz.web;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.kz.domain.User;
import com.kz.service.UserService;
import com.kz.utils.CheckUtils;

public class LoginServlet extends HttpServlet {
	
	private UserService us = new UserService();
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
				request.setCharacterEncoding("UTF-8");
				// 1. 封装参数
				User u = new User();
				try {
					BeanUtils.populate(u, request.getParameterMap());
				} catch (Exception e) {
					e.printStackTrace();
				} 
				
				// 2.非空校验
				Map<String,String> errors = CheckUtils.checkUser(u);
				if(errors.size()>0){
					request.setAttribute("errors", errors);
					request.getRequestDispatcher("/error.jsp").forward(request, response);
					return;
				}
				
				// 3.调用Service
				User existU = null;
				try {
					existU= us.login(u);
				} catch (Exception e) {
					e.printStackTrace();
					request.setAttribute("error", e.getMessage());
					request.getRequestDispatcher("/error.jsp").forward(request, response);
					return;
				}
				
				//1 获得用户填写的验证码
				String code1 = request.getParameter("code");
			
				//2 获得Session中正确的
				String code2 = (String) request.getSession().getAttribute("code");
			
				//3 比对
				if(code1!=null && code1.equalsIgnoreCase(code2)){
				//成功=> 登录成功 => 重定向到登录页面
				// 4.向session中加入登录标识
				request.getSession().setAttribute("user", existU);
				// 5.重定向到列表显示servlet
				response.sendRedirect(request.getContextPath()+"/user_info.jsp");
				
			}else{
				//失败=> 转发到登录页面并提示
				request.setAttribute("error", "请输入正确的验证码");
				request.getRequestDispatcher("/error.jsp").forward(request, response);				
			}
		
	
	}

	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
