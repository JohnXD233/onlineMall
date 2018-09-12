package com.demo.dao;

import java.util.List;

import com.demo.bean.Order;

public interface OrderDao {
	/**
	 * 根据orderID 查询order
	 * @param order
	 * @return
	 */
	Order findOrder(Order order);
	
	/**
	 * 根据Uid 查询order
	 * @param order
	 * @return
	 */
	Order findOrderByUid(Order order);
	
	/**
	 * 查询所有的order，如果要筛选，到业务逻辑中去筛选
	 * @return
	 */
	List<Order> getOrders();
	
	/**
	 * 修改订单
	 * @param order
	 * @return
	 */
	boolean alterOrder(Order order);
	
	/**
	 * 增加订单
	 * @param order
	 * @return
	 */
	boolean addOrder(Order order);
	
	/**
	 * 删除订单，根据order中的orderid
	 * @param order
	 * @return
	 */
	boolean delOrder(Order order);
}
