package com.demo.dao;

import java.util.List;

import com.demo.bean.OrderItem;

public interface OrderItemDao {
	/**
	 * 查询指定订单项，根据itemid，不是orderid（1 对 多）
	 * @param orderItem
	 * @return
	 */
	OrderItem findOrderItem(OrderItem orderItem);
	
	/**
	 * 查询所有的 订单项
	 * @return
	 */
	List<OrderItem> getOrderItems();
	
	/**
	 * 添加订单项
	 * @param orderItem
	 * @return
	 */
	boolean addOrderItem(OrderItem orderItem);
	
	/**
	 * 修改订单项
	 * @param orderItem
	 * @return
	 */
	boolean alterOrderItem(OrderItem orderItem);
	
	/**
	 * 删除订单项
	 * @param orderItem
	 * @return
	 */
	boolean delOrderItem(OrderItem orderItem);
}
