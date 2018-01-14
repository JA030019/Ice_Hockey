package com.kz.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kz.domain.Admin;
import com.kz.domain.User;
import com.kz.service.AdminService;
import com.kz.service.UserService;

public class AdminServlet extends HttpServlet {
	
	private AdminService as = new AdminService();
	private UserService us = new UserService();
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		HttpSession session=request.getSession();
		String value = request.getParameter("judge");
		String deleteId = request.getParameter("id");
		String deleteUID = request.getParameter("uid");	
		String selectId = request.getParameter("sid");
		
		//1 校验用户是否登录
		Admin u = (Admin)session.getAttribute("admin");
		
		//未登录=> 重定向到登录页面
		if(u==null){
			response.sendRedirect(request.getContextPath()+"/admin_login.jsp");
			return;
		}
					
		if(("1".equals(value)||value==null)&&(deleteId==null&&deleteUID==null&&selectId==null)){
			//2 调用Service查询用户列表. 
			List<User> list = as.getAllUser();
			
			if(list!=null){
				//3将用户列表放入session域,转发到列表页面
				session.setAttribute("admin_user_list", list);
				request.getRequestDispatcher("/admin_user_list.jsp").forward(request, response);
				}	
			
			}else if("3".equals(value)){
				//2 调用Service查询用户列表. 
				List<User> list = as.getAllUser();
				
				if(list!=null){
					//3将用户列表放入session域,转发到列表页面
					session.setAttribute("admin_user_list", list);
					request.getRequestDispatcher("/admin_user_list_level.jsp").forward(request, response);
					}	
			
			}else if("4".equals(value)){
				//2 调用Service查询用户列表. 
				List<User> list = as.getAllUser();
				
				if(list!=null){
					//3将用户列表放入session域,转发到列表页面
					session.setAttribute("admin_user_list", list);
					request.getRequestDispatcher("/admin_user_list_win.jsp").forward(request, response);
					}	
				
			}else if("5".equals(value)){
				//2 调用Service查询用户列表. 
				List<User> list = as.getAllUser();
				
				if(list!=null){
					//3将用户列表放入session域,转发到列表页面
					session.setAttribute("admin_user_list", list);
					request.getRequestDispatcher("/admin_user_list_quality.jsp").forward(request, response);
					}	
				
			}else if("6".equals(value)){
				//2 调用Service查询用户列表. 
				List<User> list = as.getAllUser();
				
				if(list!=null){
					//3将用户列表放入session域,转发到列表页面
					session.setAttribute("admin_user_list", list);
					request.getRequestDispatcher("/admin_user_list_character.jsp").forward(request, response);
					}	
				
			}else if("2".equals(value)){
			//2 调用Service查询管理员列表. 
			List<Admin> list = as.getAllAdmin();
			if(list!=null){
				//3将管理员列表放入session域,转发到列表页面
				session.setAttribute("admin_admin_list", list);
				request.getRequestDispatcher("/admin_admin_list.jsp").forward(request, response);								
				}
			
			}else if(deleteId!=null){
				boolean res = as.adminPowerDelete(deleteId, 2);
				if(res==true){
					List<Admin> list = as.getAllAdmin();
					session.setAttribute("admin_admin_list", list);
					request.getRequestDispatcher("/admin_admin_list.jsp").forward(request, response);
				}
					
			}else if(deleteUID!=null){
				boolean res = as.adminPowerDelete(deleteUID, 1);
				if(res==true){
					List<User> list = as.getAllUser();
					session.setAttribute("admin_user_list", list);
					request.getRequestDispatcher("/admin_user_list.jsp").forward(request, response);
				}
				
			}else if(selectId != null){
				//跳转到user_detail页面显示用户基本信息				
				User user = null;
				user = us.getUserById(selectId);
				session.setAttribute("user_basic_info", user);
				request.getRequestDispatcher("/admin_user_basic_info.jsp").forward(request, response);
				
			}else{
					request.getRequestDispatcher("/error.jsp").forward(request, response);
			}
	
	}

	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			this.doGet(request, response);
	}

}
