package com.demo.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.bean.ClassOne;
import com.demo.dao.BaseDao;
import com.demo.dao.ClassOneDao;

public class ClassOneDaoImpl extends BaseDao implements ClassOneDao{

	@Override
	public ClassOne findClassOne(ClassOne classOne) {
		Connection connection=getConn();
		String sql="select * from classone where classoneid=?";
		PreparedStatement pt=null;
		ResultSet rs=null;
		ClassOne classOne2=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setInt(1, classOne.getClassoneId());
			rs=pt.executeQuery();
			if(rs.next()) {
				classOne2=new ClassOne(rs.getInt(1),rs.getString(2));
			}
			return classOne2;
			
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
	public List<ClassOne> getClassOnes() {
		Connection connection=getConn();
		String sql="select * from classone";
		PreparedStatement pt=null;
		ResultSet rs=null;
		List<ClassOne> list=new ArrayList<ClassOne>();
		
		try {
			pt=connection.prepareStatement(sql);
			rs=pt.executeQuery();
			while(rs.next()) {
				list.add(new ClassOne(rs.getInt(1),rs.getString(2)));
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
	public boolean addClassOne(ClassOne classOne) {
		Connection connection=getConn();
		String sql="insert into classone(classname) values(?)";
		PreparedStatement pt=null;
		ResultSet rs=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setString(1,classOne.getClassName());
			
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
	public boolean alterClassOne(ClassOne classOne) {
		Connection connection=getConn();
		String sql="update classone set classname=? where classoneid=?";
		PreparedStatement pt=null;
		ResultSet rs=null;
		
		try {
			pt=connection.prepareStatement(sql);
			
			
			pt.setString(1, classOne.getClassName());
			pt.setInt(2, classOne.getClassoneId());
			
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
	public boolean delClassOne(ClassOne classOne) {
		Connection connection=getConn();
		String sql="delete from classone where classoneid=?";
		PreparedStatement pt=null;
		ResultSet rs=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setInt(1,classOne.getClassoneId());
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
