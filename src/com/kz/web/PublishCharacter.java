package com.kz.web;

import java.io.IOException;

import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.kz.domain.UserCharacter;

import com.kz.service.UserCharacterService;

public class PublishCharacter extends HttpServlet {
	
	private UserCharacterService ucs = new UserCharacterService();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
		
			UserCharacter uc = new UserCharacter();
		
			try {
				BeanUtils.populate(uc, request.getParameterMap());
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			}
		
			ucs.saveCharacter(uc);
			request.getRequestDispatcher("/admin_user_list.jsp").forward(request, response);
		
}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

			this.doGet(request, response);
	}

}
