package com.kz.web;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.kz.domain.Admin;
import com.kz.service.AdminService;

public class AdminRegisterServlet extends HttpServlet {

	private AdminService as = new AdminService();
	
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			request.setCharacterEncoding("UTF-8");
			HttpSession session=request.getSession();

			//1 封装参数到User对象
			Admin a = new Admin();
			try {
				BeanUtils.populate(a, request.getParameterMap());
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			}
			try {
				as.register(a);
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("error", e.getMessage());
				request.getRequestDispatcher("/error.jsp").forward(request, response);
				return;
			}
			List<Admin> list = as.getAllAdmin();
			session.setAttribute("admin_admin_list", list);
			response.sendRedirect(request.getContextPath()+"/admin_admin_list.jsp");
		

		
	}


	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			this.doGet(request, response);
	}

}
