package com.kz.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.kz.dao.UserCharacterDao;
import com.kz.domain.UserCharacter;
import com.kz.utils.JDBCUtils;

public class UserCharacterDaoImpl implements UserCharacterDao{

	@Override
	public void saveQuality(UserCharacter uc) {

		//1 获得连接
		Connection  conn  = JDBCUtils.getConnection();
		//2 书写sql
		String sql = "insert into user_character(uid, date1, date2, core1, core2, core3, coach, other) values (?, ?, ?, ?, ?, ?, ?, ?);";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, uc.getUid());
			ps.setDate(2, uc.getDate1());
			ps.setDate(3, uc.getDate2());
			ps.setDouble(4, uc.getCore1());
			ps.setDouble(5, uc.getCore2());
			ps.setDouble(6, uc.getCore3());
			ps.setString(7, uc.getCoach());
			ps.setString(8, uc.getOther());
			
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
