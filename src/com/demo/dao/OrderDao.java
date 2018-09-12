package com.demo.dao;

import java.util.List;

import com.demo.bean.Order;

public interface OrderDao {
	/**
	 * ����orderID ��ѯorder
	 * @param order
	 * @return
	 */
	Order findOrder(Order order);
	
	/**
	 * ����Uid ��ѯorder
	 * @param order
	 * @return
	 */
	Order findOrderByUid(Order order);
	
	/**
	 * ��ѯ���е�order�����Ҫɸѡ����ҵ���߼���ȥɸѡ
	 * @return
	 */
	List<Order> getOrders();
	
	/**
	 * �޸Ķ���
	 * @param order
	 * @return
	 */
	boolean alterOrder(Order order);
	
	/**
	 * ���Ӷ���
	 * @param order
	 * @return
	 */
	boolean addOrder(Order order);
	
	/**
	 * ɾ������������order�е�orderid
	 * @param order
	 * @return
	 */
	boolean delOrder(Order order);
}
