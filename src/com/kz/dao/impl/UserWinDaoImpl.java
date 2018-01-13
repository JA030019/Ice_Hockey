package com.kz.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.kz.dao.UserWinDao;
import com.kz.domain.UserWin;
import com.kz.utils.JDBCUtils;

public class UserWinDaoImpl implements UserWinDao{

	@Override
	public UserWin getUserWinInfo(String id) {
		
		UserWin uw = null;
		//1 获得连接
		Connection  conn  = JDBCUtils.getConnection();
		//2 书写sql
		String sql = "select * from user_win where id='"+id+"'";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			//3 获得PrepareStatement
			ps = conn.prepareStatement(sql);
			//4 执行查询
			rs = ps.executeQuery();
			//6 将结果集中的信息封装到News对象中
			while(rs.next()){
				uw = new UserWin();
				uw.setId(rs.getInt("id"));
				uw.setTitle(rs.getString("title"));
				uw.setDate(rs.getDate("date"));
				uw.setImgurl(rs.getString("imgurl"));
				uw.setOther(rs.getString("other"));					
			}
				return uw;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("查询等级证书列表失败!");
		}finally{
			JDBCUtils.close(conn, ps, rs);
		}
	
		
	}

	@Override
	public void saveWin(UserWin uw) {
		//1 获得连接
		Connection  conn  = JDBCUtils.getConnection();
		//2 书写sql
		String sql = "insert into user_win(uid, title, date, imgurl, other) values (?, ?, ?, ?, ?);";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, uw.getUid());
			ps.setString(2, uw.getTitle());
			ps.setDate(3, uw.getDate());
			ps.setString(4, uw.getImgurl());
			ps.setString(5, uw.getOther());
			
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
