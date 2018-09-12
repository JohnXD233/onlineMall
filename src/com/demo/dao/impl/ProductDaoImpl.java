package com.demo.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demo.bean.Product;
import com.demo.dao.BaseDao;
import com.demo.dao.ProductDao;

public class ProductDaoImpl extends BaseDao implements ProductDao{

	@Override
	public Product findProduct(Product product) {
		Connection connection=getConn();
		String sql="select * from product where pid=?";
		PreparedStatement pt=null;
		ResultSet rs=null;
		Product product2=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setInt(1, product.getPid());
			rs=pt.executeQuery();
			if(rs.next()) {
				product2=new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getShort(7),rs.getInt(8));
			}
			return product2;
			
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
	public List<Product> getProducts() {
		Connection connection=getConn();
		String sql="select * from product";
		PreparedStatement pt=null;
		ResultSet rs=null;
		List<Product> list=new ArrayList<Product>();
		
		try {
			pt=connection.prepareStatement(sql);
			rs=pt.executeQuery();
			while(rs.next()) {
				list.add(new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getInt(7),rs.getInt(8)));
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
	public boolean alterProduct(Product product) {
		Connection connection=getConn();
		String sql="update product set pname=?,priceinmall=?,priceinmarket=?,describe=?,picture=?,classtwoid=?,clickcount=? where pid=?";
		PreparedStatement pt=null;
		ResultSet rs=null;
		
		try {
			pt=connection.prepareStatement(sql);
			
			pt.setString(1, product.getPname());
			pt.setString(2, product.getPriceInMall());
			pt.setString(3, product.getPriceInMarket());
			pt.setString(4, product.getDescribes());
			pt.setString(5, product.getPicture());
			pt.setInt(6, product.getClassTwoId());
			pt.setInt(7, product.getClickCount());
			pt.setInt(8, product.getPid());
			
			return pt.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			closeAll(connection, pt, rs);
		}		return false;
	}

	@Override
	public boolean addProduct(Product product) {
		Connection connection=getConn();
		String sql="insert into product(pname,priceinmall,priceinmarket,describe,picture,classtwoid) values(?,?,?,?,?,?)";
		PreparedStatement pt=null;
		ResultSet rs=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setString(1, product.getPname());
			pt.setString(2, product.getPriceInMall());
			pt.setString(3, product.getPriceInMarket());
			pt.setString(4, product.getDescribes());
			pt.setString(5, product.getPicture());
			pt.setInt(6, product.getClassTwoId());
			//这边clickcount在数据库中设置默认值为0 ，所以这边不用insert
			
			return pt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			closeAll(connection, pt, rs);
		}		return false;
	}

	@Override
	public boolean delProduct(Product product) {
		Connection connection=getConn();
		String sql="delete from product where pid=?";
		PreparedStatement pt=null;
		ResultSet rs=null;
		
		try {
			pt=connection.prepareStatement(sql);
			pt.setInt(1,product.getPid());
			return pt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			closeAll(connection, pt, rs);
		}		return false;
	}

	@Override
	public List<Product> findHotProducts(int classTwoId) {
		Connection connection=getConn();
		String sql="select * from product where classTwoId=? order by clickcount DESC limit 10";//ORDER BY clickCount DESC
		PreparedStatement pt=null;
		ResultSet rs=null;
		List<Product> list=new ArrayList<>();
		try {
			pt=connection.prepareStatement(sql);
			pt.setInt(1,classTwoId);
			rs=pt.executeQuery();
			rs=pt.executeQuery();
			while(rs.next()) {
				list.add(new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getShort(7),rs.getInt(8)));
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

}
