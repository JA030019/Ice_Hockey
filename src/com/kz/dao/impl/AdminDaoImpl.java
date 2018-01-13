package com.kz.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.kz.dao.AdminDao;
import com.kz.domain.Admin;
import com.kz.domain.User;
import com.kz.utils.JDBCUtils;

public class AdminDaoImpl implements AdminDao {

	@Override
	public List<User> getAllUser() {
		
		List<User> list = new ArrayList<User>();
		
		//1 获得连接
		Connection  conn  = JDBCUtils.getConnection();
		//2 书写sql
		String sql = "select * from user ";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			//3 获得PrepareStatement
			 ps = conn.prepareStatement(sql);
			//4 执行查询
			 rs = ps.executeQuery();
			//6 将结果集中的信息封装到User对象中
			while(rs.next()){
				//有数据
				User u = new User();
				
				u.setId(rs.getInt("id"));
				u.setUsername(rs.getString("username"));
				u.setRealname(rs.getString("realname"));
				u.setPassword(rs.getString("password"));	
				u.setEmail(rs.getString("email"));
				u.setPhone(rs.getString("phone"));
				u.setBrith(rs.getTimestamp("brith"));
				u.setHold(rs.getString("hold"));
				u.setProvince(rs.getString("province"));
				u.setPlayexperience(rs.getInt("playexperience"));
				u.setSex(rs.getString("sex"));
				u.setInjury(rs.getString("injury"));
				u.setOther(rs.getString("other"));
				
				list.add(u);
			}			
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("查询用户列表失败!");
		}finally{
			//7 关闭资源, 返回User
			JDBCUtils.close(conn, ps, rs);
		}	
	}

	@Override
	public List<Admin> getAllAdmin() {
	
		List<Admin> list = new ArrayList<Admin>();
		
		//1 获得连接
		Connection  conn  = JDBCUtils.getConnection();
		//2 书写sql
		String sql = "select * from admin ";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			//3 获得PrepareStatement
			 ps = conn.prepareStatement(sql);
			//4 执行查询
			 rs = ps.executeQuery();
			//6 将结果集中的信息封装到Admin对象中
			while(rs.next()){
				//有数据
				Admin a = new Admin();
				a.setId(rs.getInt("id"));
				a.setAdminname(rs.getString("adminname"));
				a.setPassword(rs.getString("password"));	
				a.setPower(rs.getInt("power"));
				list.add(a);
			}			
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("查询管理员列表失败!");
		}finally{
			//7 关闭资源, 返回User
			JDBCUtils.close(conn, ps, rs);
		}	
	}

	
	@Override
	public Admin getUserByName(String name) {

		Admin a = null;
		//1 获得连接
		Connection  conn  = JDBCUtils.getConnection();
		//2 书写sql
		String sql = "select * from admin where adminname=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			//3 获得PrepareStatement
			 ps = conn.prepareStatement(sql);
			//4 设置参数
			ps.setString(1, name);
			//5 执行查询
			 rs = ps.executeQuery();
			//6 将结果集中的信息封装到User对象中
			if(rs.next()){
				//有数据
				a = new Admin();
				a.setId(rs.getInt("id"));
				a.setAdminname(rs.getString("adminname"));
				a.setPassword(rs.getString("password"));	
				a.setPower(rs.getInt("power"));
			}			
			return a;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("查询用户失败!");
		}finally{
			//7 关闭资源, 返回User
			JDBCUtils.close(conn, ps, rs);
		}
	}

	@Override
	public boolean adminPowerDelete(String id, int method) {

		String str="";
		if(method==1){
			str="user";
		}
		else if(method==2){
			str="admin";
		}
		
		Connection  conn  = JDBCUtils.getConnection();
		String sql = "delete from "+str+" where id='"+id+"'";//删除语句
		PreparedStatement ps = null;
		ResultSet rs = null;
		try{
			ps = conn.prepareStatement(sql);
			int result = ps.executeUpdate();	
			
			return true;
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException("删除失败!");		
		}finally{
			JDBCUtils.close(conn, ps, null);
		}	
	}

	@Override
	public void save(Admin a) {

		//1 获得连接
		Connection  conn  = JDBCUtils.getConnection();
		//2 准备Sql
		String sql = "INSERT INTO admin(adminname,password) VALUES(?,?);";
		//3 获得PrepareStatement对象
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
			//4 设置参数
			ps.setString(1, a.getAdminname());
			ps.setString(2, a.getPassword());
			//5 执行sql
			int result = ps.executeUpdate();
			if(result!=1){
				throw new RuntimeException("保存管理员失败!");
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("保存管理员失败!");
		}finally{
			//6 关闭资源
			JDBCUtils.close(conn, ps, null);
		}		
	}

}
