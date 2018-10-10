package com.demo.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.bean.User;
import com.demo.dao.BaseDao;
import com.demo.dao.UserDao;

public class UserDaoImpl extends BaseDao implements UserDao{

	@Override
	public User findUser(User user) {

		Connection connection=getConn();
		String sql="select * from user where uname=? and upass=?";
		PreparedStatement pt=null;
		ResultSet rs=null;
		User user2=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setString(1, user.getUname());
			pt.setString(2, user.getUpass());
			rs=pt.executeQuery();
			if(rs.next()) {
				user2=new User(rs.getInt("uid"),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),
						rs.getString(6),rs.getString(7),rs.getInt(8),rs.getString(9));
			}
			return user2;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			closeAll(connection, pt, rs);
		}
		
		return null;
	}
	
	@Override
	public User findUserByEmail(String email) {
		Connection connection=getConn();
		String sql="select * from user where email=?";
		PreparedStatement pt=null;
		ResultSet rs=null;
		User user2=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setString(1, email);
			rs=pt.executeQuery();
			if(rs.next()) {
				user2=new User(rs.getInt("uid"),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),
						rs.getString(6),rs.getString(7),rs.getInt(8),rs.getString(9));
			}
			return user2;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			closeAll(connection, pt, rs);
		}
		return null;
	}

	@Override
	public List<User> getUsers() {
		Connection connection=getConn();
		String sql="select * from user";
		PreparedStatement pt=null;
		ResultSet rs=null;
		List<User> list=new ArrayList<User>();
		
		try {
			pt=connection.prepareStatement(sql);
			rs=pt.executeQuery();
			while(rs.next()) {
				list.add(new User(rs.getInt("uid"),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),
						rs.getString(6),rs.getString(7),rs.getInt(8),rs.getString(9)));
			}
			return list;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			closeAll(connection, pt, rs);
		}
		return null;
	}

	
	@Override
	public boolean delUser(User user) {
		Connection connection=getConn();
		String sql="delete from user where uid=?";
		PreparedStatement pt=null;
		ResultSet rs=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setString(1, user.getUname());
			return pt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			closeAll(connection, pt, rs);
		}
		return false;
	}

	@Override
	public boolean addUser(User user) {
		Connection connection=getConn();
		String sql="insert into user(uname,upass,realname,email,address,phone,state,activecode) values(?,?,?,?,?,?,?,?)";
		PreparedStatement pt=null;
		ResultSet rs=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setString(1, user.getUname());
			pt.setString(2, user.getUpass());
			pt.setString(3, user.getRealname());
			pt.setString(4, user.getEmail());
			pt.setString(5, user.getAddress());
			pt.setString(6, user.getPhone());
			pt.setInt(7, user.getState());
			pt.setString(8, user.getActivecode());
			return pt.execute();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			closeAll(connection, pt, rs);
		}
		
		return false;
	}

	@Override
	public boolean alterUser(User user) {
		Connection connection=getConn();
		String sql="update user set upass=?,realname=?,email=?,address=?,phone=?,state=?,activecode=? where uid=?";
		PreparedStatement pt=null;
		ResultSet rs=null;
		
		try {
			pt=connection.prepareStatement(sql);
			
			pt.setString(1, user.getUpass());
			pt.setString(2, user.getRealname());
			pt.setString(3, user.getEmail());
			pt.setString(4, user.getAddress());
			pt.setString(5, user.getPhone());
			pt.setInt(6, user.getState());
			pt.setString(7, user.getActivecode());
			pt.setString(8, user.getUname());
			
			return pt.execute();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			closeAll(connection, pt, rs);
		}
		return false;
	}

	

}
