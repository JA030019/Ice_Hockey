package com.kz.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kz.domain.User;
import com.kz.service.UserService;

public class UserServlet extends HttpServlet {
	
	private UserService us = new UserService();
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			HttpSession session=request.getSession();
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");
			
			String judge = request.getParameter("judge");
			String newPassword = request.getParameter("password");
			String newEmail = request.getParameter("email");
			String newPhone = request.getParameter("phone");
			String newProvince = request.getParameter("province");
			String realname = request.getParameter("realname");
			String sex = request.getParameter("sex");
			String brith = request.getParameter("brith");
			String playexperience = request.getParameter("playexperience");
			String hold = request.getParameter("hold");
			String injury = request.getParameter("injury");
			String other = request.getParameter("other");
			
			
			
			
			if("3".equals(judge)){
				//更新密码，下次登录生效
				User user = null;
				user = (User) session.getAttribute("user");
				us.updatePassword(user.getId(), newPassword);
				request.getRequestDispatcher("/user_info.jsp").forward(request, response);				
			}else if("1".equals(judge)){
				//更新基本信息
				//更新数据库user对象
				User user = null;
				user = (User) session.getAttribute("user");
				us.updateBasicInfo(user.getId(), newProvince, newEmail, newPhone, realname, sex, brith, playexperience, hold, injury, other);
				
				//更新session域的User对象
				user = us.getUserById(user.getId());
				request.getSession().setAttribute("user", user);
				request.getRequestDispatcher("/user_info.jsp").forward(request, response);
			}else if("2".equals(judge)){
				//进入等级证书列表
				List userLevelList = null;
				User user = null;
				user = (User) session.getAttribute("user");
				userLevelList = us.getAllLevel(user.getId());
				
				session.setAttribute("userLevel", userLevelList);
				request.getRequestDispatcher("/user_level.jsp").forward(request, response);
			}else if("4".equals(judge)){
				//进入获奖信息列表
				List userWinList = null;
				User user = null;
				user = (User) session.getAttribute("user");
				userWinList = us.getAllWin(user.getId());
				
				session.setAttribute("userWin", userWinList);
				request.getRequestDispatcher("/user_win.jsp").forward(request, response);
			}else if("5".equals(judge)){
				//进入素质测试页面，直接表格展示所有测试
				List userQualityList = null;
				User user = null;
				user = (User) session.getAttribute("user");
				userQualityList = us.getAllQuality(user.getId());
				
				session.setAttribute("userQuality", userQualityList);
				request.getRequestDispatcher("/user_quality.jsp").forward(request, response);
			}else if("6".equals(judge)){
				//进入品格测试页面，直接表格展示所有成绩
				List userCharacterList = null;
				User user = null;
				user = (User) session.getAttribute("user");
				userCharacterList = us.getAllCharacter(user.getId());
				
				session.setAttribute("userCharacter", userCharacterList);
				request.getRequestDispatcher("/user_character.jsp").forward(request, response);
			}
			
	}
	

	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			this.doGet(request, response);

		
	}

}
