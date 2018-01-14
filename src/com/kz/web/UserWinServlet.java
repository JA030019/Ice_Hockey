package com.kz.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kz.domain.UserWin;

import com.kz.service.UserWinService;

public class UserWinServlet extends HttpServlet {

	private UserWinService uws = new UserWinService();
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			request.setCharacterEncoding("UTF-8");
			HttpSession session=request.getSession();
		
			String id = request.getParameter("id");
			
			if(id != null){
				UserWin uw = new UserWin();
				uw = uws.getUserWinInfo(id);				
				session.setAttribute("UserWinInfo", uw);
				request.getRequestDispatcher("/user_win_detail.jsp").forward(request, response);
			}

	}

	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			this.doGet(request, response);
	}

}
