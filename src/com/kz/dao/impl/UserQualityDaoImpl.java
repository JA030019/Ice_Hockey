package com.kz.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.kz.dao.UserQualityDao;
import com.kz.domain.UserQuality;
import com.kz.utils.JDBCUtils;

public class UserQualityDaoImpl implements UserQualityDao{

	@Override
	public void saveQuality(UserQuality uq) {

		//1 获得连接
		Connection  conn  = JDBCUtils.getConnection();
		//2 书写sql
		String sql = "insert into user_quality(uid, date, content, grade, coach, tiaojian, other) values (?, ?, ?, ?, ?, ?, ?);";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, uq.getUid());
			ps.setDate(2, uq.getDate());
			ps.setString(3, uq.getContent());
			ps.setString(4, uq.getGrade());
			ps.setString(5, uq.getCoach());
			ps.setString(6, uq.getTiaojian());
			ps.setString(7, uq.getOther());
			
			int result = ps.executeUpdate();
			
			if(result!=1){
				throw new RuntimeException("保存失败!");
			}				
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("保存失败!");
		}finally{
			JDBCUtils.close(conn, ps, null);
		}
		
	
		
	}

}
