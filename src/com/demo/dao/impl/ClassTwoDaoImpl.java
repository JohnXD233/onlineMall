package com.demo.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.bean.ClassTwo;
import com.demo.dao.BaseDao;
import com.demo.dao.ClassTwoDao;

public class ClassTwoDaoImpl extends BaseDao implements ClassTwoDao{

	@Override
	public ClassTwo findClassTwo(ClassTwo classTwo) {
		Connection connection=getConn();
		String sql="select * from classtwo where classtwoid=?";
		PreparedStatement pt=null;
		ResultSet rs=null;
		ClassTwo classTwo2=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setInt(1, classTwo.getClassoneId());
			rs=pt.executeQuery();
			if(rs.next()) {
				classTwo2=new ClassTwo(rs.getShort(1),rs.getString(2),rs.getInt(3));
			}
			return classTwo2;
			
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
	public List<ClassTwo> getClassTwos() {
		Connection connection=getConn();
		String sql="select * from classtwo";
		PreparedStatement pt=null;
		ResultSet rs=null;
		List<ClassTwo> list=new ArrayList<ClassTwo>();
		
		try {
			pt=connection.prepareStatement(sql);
			rs=pt.executeQuery();
			while(rs.next()) {
				list.add(new ClassTwo(rs.getInt(1),rs.getString(2),rs.getShort(3)));
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
	public boolean addClassTwo(ClassTwo classTwo) {
		Connection connection=getConn();
		String sql="insert into classtwo(classname,classoneid) values(?,?)";
		PreparedStatement pt=null;
		ResultSet rs=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setString(1,classTwo.getClassName());
			pt.setInt(2, classTwo.getClassoneId());
			
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
	public boolean alterClassTwo(ClassTwo classTwo) {
		Connection connection=getConn();
		String sql="update classtwo set classname=?,classoneid=? where classtwoid=?";
		PreparedStatement pt=null;
		ResultSet rs=null;
		
		try {
			pt=connection.prepareStatement(sql);
			
			pt.setString(1, classTwo.getClassName());
			pt.setInt(2, classTwo.getClassoneId());
			pt.setInt(3, classTwo.getClasstwoId());
			
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
	public boolean delClassTwo(ClassTwo classTwo) {
		Connection connection=getConn();
		String sql="delete from classtwo where classtwoid=?";
		PreparedStatement pt=null;
		ResultSet rs=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setInt(1,classTwo.getClasstwoId());
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
	public ClassTwo findClassTwoByName(String classTwoName) {
		Connection connection=getConn();
		String sql="select * from classtwo where classname=?";
		PreparedStatement pt=null;
		ResultSet rs=null;
		ClassTwo classTwo=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setString(1,classTwoName);
			rs=pt.executeQuery();
			if(rs.next())
			{
				classTwo=new ClassTwo(rs.getShort(1),rs.getString(2),rs.getInt(3));
			}
			return classTwo;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			closeAll(connection, pt, rs);
		}		
		return classTwo;
	}

}
