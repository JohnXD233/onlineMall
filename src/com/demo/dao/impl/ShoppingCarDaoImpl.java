package com.demo.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.bean.Product;
import com.demo.bean.ShoppingCar;
import com.demo.dao.BaseDao;
import com.demo.dao.ShoppingCarDao;

public class ShoppingCarDaoImpl extends BaseDao implements ShoppingCarDao{

	@Override
	public ShoppingCar findRecord(ShoppingCar shoppingCar) {
		Connection connection=getConn();
		String sql="select * from shoppingcar where pid=? and uid=?";
		PreparedStatement pt=null;
		ResultSet rs=null;
		ShoppingCar shoppingCar2=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setInt(1, shoppingCar.getPid());
			pt.setInt(2, shoppingCar.getUid());
			rs=pt.executeQuery();
			if(rs.next()) {
				shoppingCar2=new ShoppingCar(rs.getInt(1),rs.getInt(2),rs.getInt(3));
			}
			return shoppingCar2;
			
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
	public List<ShoppingCar> findRecords() {
		Connection connection=getConn();
		String sql="select * from shoppingcar";
		PreparedStatement pt=null;
		ResultSet rs=null;
		List<ShoppingCar> list=new ArrayList<ShoppingCar>();
		
		try {
			pt=connection.prepareStatement(sql);
			rs=pt.executeQuery();
			while(rs.next()) {
				list.add(new ShoppingCar(rs.getInt(1),rs.getInt(2),rs.getInt(3)));
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
	public boolean delRecord(int carid) {
		Connection connection=getConn();
		String sql="delete * from shoppingcar where carid=?";
		PreparedStatement pt=null;
		ResultSet rs=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setInt(1, carid);
			return pt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean addRecord(ShoppingCar shoppingCar) {
		Connection connection=getConn();
		String sql="insert into shoppingcar(pid,uid) values(?,?)";
		PreparedStatement pt=null;
		ResultSet rs=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setInt(1, shoppingCar.getPid());
			pt.setInt(2, shoppingCar.getUid());
			return pt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean delAllRecord(int uid) {
		Connection connection=getConn();
		String sql="delete * from shoppingcar where uid=?";
		PreparedStatement pt=null;
		ResultSet rs=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setInt(1, uid);
			return pt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

}
