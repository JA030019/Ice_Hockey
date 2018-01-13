package com.kz.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.kz.dao.UserLevelDao;
import com.kz.domain.Userlevel;
import com.kz.utils.JDBCUtils;

public class UserLevelDaoImpl implements UserLevelDao{

	@Override
	public Userlevel getUserLevelInfo(String id) {

		Userlevel ul = null;
		//1 获得连接
		Connection  conn  = JDBCUtils.getConnection();
		//2 书写sql
		String sql = "select * from user_level where id='"+id+"'";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			//3 获得PrepareStatement
			ps = conn.prepareStatement(sql);
			//4 执行查询
			rs = ps.executeQuery();
			//6 将结果集中的信息封装到News对象中
			while(rs.next()){
				ul = new Userlevel();
				ul.setId(rs.getInt("id"));
				ul.setImgurl(rs.getString("imgurl"));
			
			}
				return ul;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("查询等级证书列表失败!");
		}finally{
			JDBCUtils.close(conn, ps, rs);
		}
	
		
	}

	@Override
	public void savelevel(Userlevel ul) {
		//1 获得连接
		Connection  conn  = JDBCUtils.getConnection();
		//2 书写sql
		String sql = "insert into user_level(uid, imgurl) values (?, ?);";
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, ul.getUid());
			ps.setString(2, ul.getImgurl());
			
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
