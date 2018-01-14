package com.kz.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.kz.domain.Admin;
import com.kz.service.AdminService;

public class AdminLoginServlet extends HttpServlet {
	
	private AdminService as = new AdminService();

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
			Admin a = new Admin();
			try {
				BeanUtils.populate(a, request.getParameterMap());
			} catch (Exception e) {
				e.printStackTrace();
			} 
			// 3.调用Service
			Admin existA = null;
		
			try {
				existA= as.login(a);
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("error", e.getMessage());
				request.getRequestDispatcher("/error.jsp").forward(request, response);
				return;
		}
		
			request.getSession().setAttribute("admin", existA);
			response.sendRedirect(request.getContextPath()+"/AdminServlet");
	

	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

			this.doGet(request, response);
	}

}
