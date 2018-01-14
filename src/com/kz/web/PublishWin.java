package com.kz.web;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;

import com.kz.domain.UserWin;
import com.kz.service.UserWinService;
import com.kz.utils.PathUtils;

public class PublishWin extends HttpServlet {

	private UserWinService uws = new UserWinService();
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

			UserWin uw = new UserWin();
		
			//封装普通表单参数的map
			Map<String,String[]> parameterMap = new HashMap<String,String[]>();
			//1 创建配置工厂
			DiskFileItemFactory factory = new DiskFileItemFactory();
			//2 创建解析器
			ServletFileUpload upload = new ServletFileUpload(factory);
			//3 解析request
			List<FileItem> list = null;
		
			try {
				list = upload.parseRequest(request);
			} catch (FileUploadException e) {
				e.printStackTrace();
				throw new RuntimeException("您操作有误!");
			}
		
			//4 遍历FileItem
			if(list!=null){
				for(FileItem item : list){
					if(!item.isFormField()){
						String uploadPath = getServletContext().getRealPath("/upload");
						String datePath = PathUtils.getDatePath(uploadPath);						
						String filename = UUID.randomUUID().toString()+".jpg"; 							
						InputStream is = item.getInputStream();
						FileOutputStream os = new FileOutputStream(uploadPath+datePath+filename);
						IOUtils.copy(is, os);
						uw.setImgurl("/upload"+datePath+filename);					
						is.close();
						os.close();
						item.delete();
					}else{
						String key = item.getFieldName();
						String value = item.getString("UTF-8");
						parameterMap.put(key, new String[]{value});
					}
				}
			}
		
			//调用BeanUtils将参数封装到Product对象中
			try {
				BeanUtils.populate(uw, parameterMap);
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			}

			uws.saveWin(uw);
			request.getRequestDispatcher("/admin_user_list.jsp").forward(request, response);	
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			this.doGet(request, response);
	}

}
