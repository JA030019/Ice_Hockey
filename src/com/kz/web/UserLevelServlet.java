package com.kz.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kz.domain.Userlevel;
import com.kz.service.UserLevelService;


public class UserLevelServlet extends HttpServlet {

	private UserLevelService uls = new UserLevelService();
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			request.setCharacterEncoding("UTF-8");
			HttpSession session=request.getSession();
			
			String id = request.getParameter("id");
			
			if(id != null){
				Userlevel ul = new Userlevel();
				ul = uls.getUserLevelInfo(id);
				session.setAttribute("UserLevelInfo", ul);
				request.getRequestDispatcher("/user_level_detail.jsp").forward(request, response);
			}
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			this.doGet(request, response);
	}

}
