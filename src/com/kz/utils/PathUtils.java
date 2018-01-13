package com.kz.utils;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

public class PathUtils {
	//    /2015/08/25/
	public static String getDatePath(String prefix){
		
		SimpleDateFormat sdf  = new SimpleDateFormat("/yyyy/MM/dd/");
		
		String datePath = sdf.format(new Date());
		//ƴװ��������·��
		String wholePath = prefix+datePath;
		//�ж������ļ��нṹ�Ƿ����
		File f = new File(wholePath);
		if(!f.exists()){
			// ������=>�����ļ��нṹ
			f.mkdirs();
		}
		
		return datePath;
	}
}
