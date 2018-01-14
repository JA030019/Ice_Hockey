package com.kz.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.dsna.util.images.ValidateCode;

public class MakeCheckCodeServlet extends HttpServlet {

	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
				//0设置正文类型
				response.setContentType("image/jpeg");
				//1 生成验证码
				ValidateCode code = new ValidateCode(150, 70, 4, 2);
				//2 将正确答案放入Session
				String right =  code.getCode();
				
				request.getSession().setAttribute("code", right);
				
				//System.out.println(right);
				//3 将图片流发送给浏览器
				code.write(response.getOutputStream());
		
	}
}
