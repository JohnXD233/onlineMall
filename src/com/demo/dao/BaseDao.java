package com.demo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.demo.resource.Resource;

/**
 * �ṩ�������ݿ�����Ӷ���connection ����ģʽ+DAOģʽ
 * 
 * @author ��
 *
 */
public class BaseDao {
	private Connection connection = null;
	public static String driverName = Resource.driverName;

	static {
		// ��������
		try {
			Class.forName(driverName);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/*
	 * private BaseDao() { }
	 */

	public Connection getConn() {
		
			// ��������
			try {
				connection = DriverManager.getConnection(Resource.url, Resource.userName, Resource.password);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		return connection;
	}

	public void closeAll(Connection connection, PreparedStatement pt, ResultSet rs) {
		try {

			if (rs != null) {
				rs.close();
			}
			if (pt != null) {
				pt.close();
			}
			if (connection != null) {
				connection.close();
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
