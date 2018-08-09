package com.demo.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.bean.User;
import com.demo.bean.UserOnline;
import com.demo.dao.BaseDao;
import com.demo.dao.UserOnlineDao;

public class UserOnlineDaoImpl extends BaseDao implements UserOnlineDao{

	@Override
	public List<UserOnline> getUsersOnline() {
		Connection connection=getConn();
		String sql="select * from useronline";
		PreparedStatement pt=null;
		ResultSet rs=null;
		List<UserOnline> list=new ArrayList<UserOnline>();
		
		try {
			pt=connection.prepareStatement(sql);
			rs=pt.executeQuery();
			while(rs.next()) {
				list.add(new UserOnline(rs.getString(1),rs.getString(2)));
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
	public UserOnline findUserOnline(User user) {
		Connection connection=getConn();
		String sql="select * from useronline where uname=?"; 
		PreparedStatement pt=null;
		ResultSet rs=null;
		UserOnline UserOnline=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setString(1, user.getUname());
			rs=pt.executeQuery();
			if(rs.next()) {
				UserOnline=new UserOnline(rs.getString(1),rs.getString(2));
			}
			return UserOnline;
			
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
	public boolean addUserOnline(User user) {
		Connection connection=getConn();
		String sql="insert into useronline values(?,?)";
		PreparedStatement pt=null;
		ResultSet rs=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setString(1, user.getUname());
			pt.setString(2, user.getUpass());
			
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
	public boolean alterUerOnline(User user) {
		//由于较麻烦 暂未实现
		return false;
	}

	@Override
	public boolean delUserOnline(User user) {
		Connection connection=getConn();
		String sql="delete from useronline where uname=?";
		PreparedStatement pt=null;
		ResultSet rs=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setString(1, user.getUname());
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
