package com.kz.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.kz.dao.UserDao;
import com.kz.domain.User;
import com.kz.domain.UserCharacter;
import com.kz.domain.UserQuality;
import com.kz.domain.UserWin;
import com.kz.domain.Userlevel;
import com.kz.utils.JDBCUtils;

public class UserDaoImpl implements UserDao{

	@Override
	public void save(User u) {	
				//1 获得连接
				Connection  conn  = JDBCUtils.getConnection();
				//2 准备Sql
				String sql = " INSERT INTO                            "+
							 " `user` (`username`, `password`, `province`, `email`, `phone`)  "        +
							 " VALUES                                 "+
							 "  (?, ?, ?, ?, ?)                                 ";
				//3 获得PrepareStatement对象
				PreparedStatement ps = null;
				try {
					 ps = conn.prepareStatement(sql);
					 //4 设置参数
					 ps.setString(1, u.getUsername());
					 ps.setString(2, u.getPassword());
					 ps.setString(3, u.getProvince());
					 ps.setString(4, u.getEmail());
					 ps.setString(5, u.getPhone());
					 
						
					 //5 执行sql
					int result = ps.executeUpdate();		
					if(result != 1 ){
								throw new RuntimeException("保存用户失败!");
									}	
					} catch (SQLException e) {
						e.printStackTrace();
						throw new RuntimeException("保存用户失败!");
					}finally{
							//6 关闭资源
							JDBCUtils.close(conn, ps, null);
					}
			}

	@Override
	public User getUserByName(String username) {
		User u = null;
		//1 获得连接
		Connection  conn  = JDBCUtils.getConnection();
		//2 书写sql
		String sql = "select * from user where username=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			//3 获得PrepareStatement
			 ps = conn.prepareStatement(sql);
			//4 设置参数
			ps.setString(1, username);
			//5 执行查询
			rs = ps.executeQuery();
			//6 将结果集中的信息封装到User对象中
			if(rs.next()){
				//有数据
				u = new User();
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
			}			
			return u;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("查询用户失败!");
		}finally{
			//7 关闭资源, 返回User
			JDBCUtils.close(conn, ps, rs);
		}
	}

	@Override
	public void updatePassword(int id, String newPassword) {
		
		//1 获得连接
		Connection  conn  = JDBCUtils.getConnection();
		//2 书写sql
		String sql = "update user set password = ? where id = ?";
		//3 获得PrepareStatement对象
		PreparedStatement ps = null;
		try {
			 ps = conn.prepareStatement(sql);
			 ps.setString(1, newPassword);
			 ps.setInt(2, id);
			 
			 int result = ps.executeUpdate();
			 if(result != 1 ){
				 throw new RuntimeException("修改密码失败!");
			 }
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			JDBCUtils.close(conn, ps, null);
		}
		
	}

	@Override
	public void updateBasicInfo(int id, String newProvince, String newEmail, String newPhone, String realname, String sex, String brith, String playexperience, String hold, String injury, String other) {
				
				//1 获得连接
				Connection  conn  = JDBCUtils.getConnection();
				//2 书写sql
				String sql = "update user set province = ? , email = ? , phone = ? , realname = ?, sex = ?, brith = ? , playexperience = ? , hold = ? , injury = ? , other = ? where id = ?";
				//3 获得PrepareStatement对象
				PreparedStatement ps = null;
				try {
					 ps = conn.prepareStatement(sql);
					 ps.setString(1, newProvince);
					 ps.setString(2, newEmail);
					 ps.setString(3, newPhone);
					 ps.setString(4, realname);
					 ps.setString(5, sex);
					 ps.setString(6, brith);
					 ps.setString(7, playexperience);
					 ps.setString(8, hold);
					 ps.setString(9, injury);
					 ps.setString(10, other);
					 ps.setInt(11, id);
					 
					 int result = ps.executeUpdate();
					 if(result != 1 ){
						 throw new RuntimeException("修改失败!");
					 }
				} catch (Exception e) {
					e.printStackTrace();
				}finally{
					JDBCUtils.close(conn, ps, null);
				}
		
	}

	@Override
	public User getUserById(int id) {

		User u = null;
		//1 获得连接
		Connection  conn  = JDBCUtils.getConnection();
		//2 书写sql
		String sql = "select * from user where id=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			//3 获得PrepareStatement
			 ps = conn.prepareStatement(sql);
			//4 设置参数
			ps.setInt(1, id);
			//5 执行查询
			rs = ps.executeQuery();
			//6 将结果集中的信息封装到User对象中
			if(rs.next()){
				//有数据
				u = new User();
				u.setId(rs.getInt("id"));
				u.setUsername(rs.getString("username"));
				u.setPassword(rs.getString("password"));	
				u.setEmail(rs.getString("email"));
				u.setPhone(rs.getString("phone"));
				u.setBrith(rs.getTimestamp("brith"));
				u.setHold(rs.getString("hold"));
				u.setProvince(rs.getString("province"));
				u.setPlayexperience(rs.getInt("playexperience"));
				u.setSex(rs.getString("sex"));
				u.setRealname(rs.getString("realname"));
				u.setInjury(rs.getString("injury"));
				u.setOther(rs.getString("other"));
			}			
			return u;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("查询用户失败!");
		}finally{
			//7 关闭资源, 返回User
			JDBCUtils.close(conn, ps, rs);
		}
	
	}

	@Override
	public List getAllLevel(int id) {

		List list = new ArrayList();
		Userlevel ul = null;
		//1 获得连接
		Connection  conn  = JDBCUtils.getConnection();
		//2 书写sql
		String sql = "select * from user_level where uid = '"+id+"'";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			//3 获得PrepareStatement
			ps = conn.prepareStatement(sql);
			//4 执行查询
			rs = ps.executeQuery();
			//6 将结果集中的信息封装
			while(rs.next()){
				ul = new Userlevel();
				ul.setId(rs.getInt("id"));
				ul.setImgurl(rs.getString("imgurl"));
				list.add(ul);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("查询列表失败!");
		}finally{
			//7 关闭资源
			JDBCUtils.close(conn, ps, rs);
		}
	
	}

	@Override
	public List getAllWin(int id) {

		List list = new ArrayList();
		UserWin uw = null;	
		
		//1 获得连接
		Connection  conn  = JDBCUtils.getConnection();
		//2 书写sql
		String sql = "select * from user_win where uid = '"+id+"'";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			//3 获得PrepareStatement
			ps = conn.prepareStatement(sql);
			//4 执行查询
			rs = ps.executeQuery();
			//6 将结果集中的信息封装
			while(rs.next()){
				uw = new UserWin();
				
				uw.setId(rs.getInt("id"));
				uw.setTitle(rs.getString("title"));
				uw.setDate(rs.getDate("date"));
				uw.setImgurl(rs.getString("imgurl"));
				uw.setOther(rs.getString("other"));
				
				list.add(uw);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("查询列表失败!");
		}finally{
			//7 关闭资源
			JDBCUtils.close(conn, ps, rs);
		}
	
	}

	@Override
	public List getAllQuality(int id) {

		List list = new ArrayList();
		UserQuality uq = null;
				
		//1 获得连接
		Connection  conn  = JDBCUtils.getConnection();
		//2 书写sql
		String sql = "select * from user_quality where uid = '"+id+"'";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			//3 获得PrepareStatement
			ps = conn.prepareStatement(sql);
			//4 执行查询
			rs = ps.executeQuery();
			//6 将结果集中的信息封装
			while(rs.next()){
				uq = new UserQuality();
				
				uq.setId(rs.getInt("id"));
				uq.setDate(rs.getDate("date"));
				uq.setContent(rs.getString("content"));
				uq.setGrade(rs.getString("grade"));
				uq.setCoach(rs.getString("coach"));
				uq.setTiaojian(rs.getString("tiaojian"));
				uq.setOther(rs.getString("other"));
				
				list.add(uq);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("查询列表失败!");
		}finally{
			//7 关闭资源
			JDBCUtils.close(conn, ps, rs);
		}
	
	}

	@Override
	public List getAllCharacter(int id) {

		List list = new ArrayList();
		UserCharacter uc = null;
				
		//1 获得连接
		Connection  conn  = JDBCUtils.getConnection();
		//2 书写sql
		String sql = "select * from user_character where uid = '"+id+"'";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			//3 获得PrepareStatement
			ps = conn.prepareStatement(sql);
			//4 执行查询
			rs = ps.executeQuery();
			//6 将结果集中的信息封装
			while(rs.next()){
				uc = new UserCharacter();
				
				uc.setId(rs.getInt("id"));
				uc.setDate1(rs.getDate("date1"));
				uc.setDate2(rs.getDate("date2"));
				uc.setCore1(rs.getDouble("core1"));
				uc.setCore2(rs.getDouble("core2"));
				uc.setCore3(rs.getDouble("core3"));
				uc.setCoach(rs.getString("coach"));
				uc.setOther(rs.getString("other"));
				
				list.add(uc);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("查询列表失败!");
		}finally{
			//7 关闭资源
			JDBCUtils.close(conn, ps, rs);
		}
	
	}

	@Override
	public User getUserById(String id) {
		
		User u = null;
		//1 获得连接
		Connection  conn  = JDBCUtils.getConnection();
		//2 书写sql
		String sql = "select * from user where id='"+id+"'";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			//3 获得PrepareStatement
			 ps = conn.prepareStatement(sql);
			//5 执行查询
			rs = ps.executeQuery();
			//6 将结果集中的信息封装到User对象中
			if(rs.next()){
				//有数据
				u = new User();
				u.setId(rs.getInt("id"));
				u.setUsername(rs.getString("username"));
				u.setPassword(rs.getString("password"));	
				u.setEmail(rs.getString("email"));
				u.setPhone(rs.getString("phone"));
				u.setBrith(rs.getTimestamp("brith"));
				u.setHold(rs.getString("hold"));
				u.setProvince(rs.getString("province"));
				u.setPlayexperience(rs.getInt("playexperience"));
				u.setSex(rs.getString("sex"));
				u.setRealname(rs.getString("realname"));
				u.setInjury(rs.getString("injury"));
				u.setOther(rs.getString("other"));
			}			
			return u;
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("查询用户失败!");
		}finally{
			//7 关闭资源, 返回User
			JDBCUtils.close(conn, ps, rs);
		}
	
	
	}
}
