package com.kz.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kz.domain.User;
import com.kz.service.AdminService;
import com.kz.service.UserLevelService;
import com.kz.service.UserService;

public class AdminAdvancedServlet extends HttpServlet {

	private AdminService as = new AdminService();
	private UserService us = new UserService();
	private UserLevelService uls = new UserLevelService();
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			HttpSession session=request.getSession();
			String value = request.getParameter("judge");
			String selectId = request.getParameter("sid");
			
			if("1".equals(value)){
				User user = null;
				user = us.getUserById(selectId);
				session.setAttribute("user_basic_info", user);
				request.getRequestDispatcher("/admin_add_level.jsp").forward(request, response);
				
			}else if("2".equals(value)){
				User user = null;
				user = us.getUserById(selectId);
				session.setAttribute("user_basic_info", user);
				request.getRequestDispatcher("/admin_add_win.jsp").forward(request, response);
				
			}else if("3".equals(value)){
				User user = null;
				user = us.getUserById(selectId);
				session.setAttribute("user_basic_info", user);
				request.getRequestDispatcher("/admin_add_quality.jsp").forward(request, response);
			
			}else if("4".equals(value)){
				User user = null;
				user = us.getUserById(selectId);
				session.setAttribute("user_basic_info", user);
				request.getRequestDispatcher("/admin_add_character.jsp").forward(request, response);
			}
	}

	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			this.doGet(request, response);
	}

}
