package com.kz.web;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.kz.domain.User;
import com.kz.service.UserService;
import com.kz.utils.CheckUtils;

public class RegisterServlet extends HttpServlet {
	
	private UserService us= new UserService(); 
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		HttpSession session=request.getSession();
		
		String value = request.getParameter("register");
		
		if("user".equals(value)){
			//1 封装参数到User对象
			User u = new User();
			try {
				BeanUtils.populate(u, request.getParameterMap());
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			}
			
			//2 校验
			Map<String, String> errors = CheckUtils.checkUser(u);
			if(errors.size()>0){
				//有错误信息=> 将错误信息放到request域=>转发到注册页面显示
				request.setAttribute("errors", errors);
				request.getRequestDispatcher("/error.jsp").forward(request, response);
				return;
			}
			
			//比较两次密码是否一致
			String repassword=request.getParameter("repassword");
			if(!u.getPassword().equals(repassword)){			
				request.setAttribute("error", "注册失败，两次密码输入不同");
				request.getRequestDispatcher("/error.jsp").forward(request, response);
				return;
			}
			//1 获得用户填写的验证码
			String code1 = request.getParameter("code");			
			//2 获得Session中正确的
			String code2 = (String) request.getSession().getAttribute("code");
			if(code1!=null && code1.equalsIgnoreCase(code2)){
				//3 调用Service保存
				try {
					us.regist(u);					
					
				} catch (Exception e) {
					e.printStackTrace();
					request.setAttribute("error", e.getMessage());
					request.getRequestDispatcher("/error.jsp").forward(request, response);
					return;
				}
				
				response.sendRedirect(request.getContextPath()+"/register_success.jsp");
			}else{
				//失败
				request.setAttribute("error", "请输入正确的验证码");
				request.getRequestDispatcher("/error.jsp").forward(request, response);
			}			
		}
			
	}


	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
		
	}

}
