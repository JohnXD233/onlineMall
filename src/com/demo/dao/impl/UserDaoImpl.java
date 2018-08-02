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
		// TODO Auto-generated method stub
		return false;
	}

}
