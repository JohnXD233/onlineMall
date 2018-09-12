package com.demo.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.bean.Order;
import com.demo.dao.BaseDao;
import com.demo.dao.OrderDao;

public class OrderDaoImpl extends BaseDao implements OrderDao{

	@Override
	public Order findOrder(Order order) {
		Connection connection=getConn();
		String sql="select * from orders where orderid=?";  //like '%?%' or ordertime like '%?%'" //要实现筛选查询 ，可以 like '% %' or
		PreparedStatement pt=null;
		ResultSet rs=null;
		Order order2=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setInt(1, order.getOrderid());
			rs=pt.executeQuery();
			if(rs.next()) {
				order2=new Order(rs.getInt(1),rs.getDate(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getInt(8));
			}
			return order2;
			
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
	public List<Order> getOrders() {
		Connection connection=getConn();
		String sql="select * from orders";
		PreparedStatement pt=null;
		ResultSet rs=null;
		List<Order> list=new ArrayList<Order>();
		
		try {
			pt=connection.prepareStatement(sql);
			rs=pt.executeQuery();
			while(rs.next()) {
				list.add(new Order(rs.getInt(1),rs.getDate(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getInt(8)));
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
	public boolean alterOrder(Order order) {
		Connection connection=getConn();
		String sql="update orders set ordertime=?,price=?,state=?,address=?,phone=?,receiver=?,uid=? where orderid=?";
		PreparedStatement pt=null;
		ResultSet rs=null;
		
		try {
			pt=connection.prepareStatement(sql);
			
			pt.setDate(1, order.getOrderTime());
			pt.setString(2, order.getPrice());
			pt.setString(3, order.getState());
			pt.setString(4, order.getAddress());
			pt.setString(5, order.getPhone());
			pt.setString(6, order.getReceiver());
			pt.setInt(7, order.getUid());
			pt.setInt(8, order.getOrderid());
			
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
	public boolean addOrder(Order order) {
		Connection connection=getConn();
		String sql="insert into orders(ordertime,price,state,address,phone,receiver,uid) values(?,?,?,?,?,?,?)";
		PreparedStatement pt=null;
		ResultSet rs=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setDate(1, order.getOrderTime());
			pt.setString(2, order.getPrice());
			pt.setString(3, order.getState());
			pt.setString(4, order.getAddress());
			pt.setString(5, order.getPhone());
			pt.setString(6, order.getReceiver());
			pt.setInt(7, order.getUid());
			
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
	public boolean delOrder(Order order) {
		Connection connection=getConn();
		String sql="delete from orders where orderid=?";
		PreparedStatement pt=null;
		ResultSet rs=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setInt(1,order.getOrderid());
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
	public Order findOrderByUid(Order order) {
		Connection connection=getConn();
		String sql="select * from orders where uid=?"; 
		PreparedStatement pt=null;
		ResultSet rs=null;
		Order order2=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setInt(1, order.getUid());
			rs=pt.executeQuery();
			if(rs.next()) {
				order2=new Order(rs.getInt(1),rs.getDate(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getInt(8));
			}
			return order2;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			closeAll(connection, pt, rs);
		}
		return null;
	}

}
