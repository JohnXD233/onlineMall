package com.demo.service;

import java.util.List;

import com.demo.bean.Order;
import com.demo.dao.OrderDao;
import com.demo.dao.impl.OrderDaoImpl;

public class OrderService {
	private OrderDao orderDao=new OrderDaoImpl();
	
	/**
	 * 查询订单，根据 订单的orderid
	 * @param order
	 * @return
	 */
	public Order findOrder(Order order) {
		return orderDao.findOrder(order);
	}
	
	/**
	 * 查询订单，根据 uid
	 * @param order
	 * @return
	 */
	public Order findOrderByUid(Order order) {
		return orderDao.findOrderByUid(order);
	}
	
	/**
	 * 查询所有订单
	 * @return
	 */
	public List<Order> getOrders(){
		return orderDao.getOrders();
	}
	
	/**
	 * 增加订单
	 * @param order
	 * @return
	 */
	public boolean addOrder(Order order) {
		return orderDao.addOrder(order);
	}
	
	/**
	 * 删除订单
	 * @param order
	 * @return
	 */
	public boolean delOrder(Order order) {
		return orderDao.delOrder(order);
	}
	
	/**
	 * 修改订单，修改订单状态
	 * @param order
	 * @return
	 */
	public boolean alterOrderForState(Order order) {
		
		return orderDao.alterOrder(order);
	}
	
	/**
	 * 修改订单，修改订单信息(收货人,联系方式,送货地址)
	 * @param order
	 * @return
	 */
	public boolean alterOrderForInfo(Order order) {
		return orderDao.alterOrder(order);
	}
}
