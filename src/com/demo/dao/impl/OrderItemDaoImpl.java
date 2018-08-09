package com.demo.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.bean.OrderItem;
import com.demo.dao.BaseDao;
import com.demo.dao.OrderItemDao;

public class OrderItemDaoImpl extends BaseDao implements OrderItemDao{

	@Override
	public OrderItem findOrderItem(OrderItem orderItem) {
		Connection connection=getConn();
		String sql="select * from orderitem where itemid=?"; 
		PreparedStatement pt=null;
		ResultSet rs=null;
		OrderItem orderItem2=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setInt(1, orderItem.getItemId());
			rs=pt.executeQuery();
			if(rs.next()) {
				orderItem2=new OrderItem(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getInt(4),rs.getInt(5));
			}
			return orderItem2;
			
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
	public List<OrderItem> getOrderItems() {
		Connection connection=getConn();
		String sql="select * from orderitem";
		PreparedStatement pt=null;
		ResultSet rs=null;
		List<OrderItem> list=new ArrayList<OrderItem>();
		
		try {
			pt=connection.prepareStatement(sql);
			rs=pt.executeQuery();
			while(rs.next()) {
				list.add(new OrderItem(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getInt(4),rs.getInt(5)));
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
	public boolean addOrderItem(OrderItem orderItem) {
		Connection connection=getConn();
		String sql="insert into orderitem(pid,orderid,number,sum) values(?,?,?,?)";
		PreparedStatement pt=null;
		ResultSet rs=null;
		
		try {
			pt=connection.prepareStatement(sql);
			
			pt.setInt(1, orderItem.getPid());
			pt.setInt(2, orderItem.getOrderid());
			pt.setInt(3, orderItem.getNumber());
			pt.setInt(4, orderItem.getSum());
			
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
	public boolean alterOrderItem(OrderItem orderItem) {
		Connection connection=getConn();
		String sql="update orderitem set pid=?,orderid=?,number=?,sum=? where itemid=?";
		PreparedStatement pt=null;
		ResultSet rs=null;
		
		try {
			pt=connection.prepareStatement(sql);
			
			
			pt.setInt(1, orderItem.getPid());
			pt.setInt(2, orderItem.getOrderid());
			pt.setInt(3, orderItem.getNumber());
			pt.setInt(4, orderItem.getSum());
			pt.setInt(5, orderItem.getItemId());
			
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
	public boolean delOrderItem(OrderItem orderItem) {
		Connection connection=getConn();
		String sql="delete from orderitem where itemid=?";
		PreparedStatement pt=null;
		ResultSet rs=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setInt(1,orderItem.getItemId());
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
