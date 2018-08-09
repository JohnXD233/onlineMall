package com.demo.dao;

import java.util.List;

import com.demo.bean.OrderItem;

public interface OrderItemDao {
	/**
	 * ��ѯָ�����������itemid������orderid��1 �� �ࣩ
	 * @param orderItem
	 * @return
	 */
	OrderItem findOrderItem(OrderItem orderItem);
	
	/**
	 * ��ѯ���е� ������
	 * @return
	 */
	List<OrderItem> getOrderItems();
	
	/**
	 * ��Ӷ�����
	 * @param orderItem
	 * @return
	 */
	boolean addOrderItem(OrderItem orderItem);
	
	/**
	 * �޸Ķ�����
	 * @param orderItem
	 * @return
	 */
	boolean alterOrderItem(OrderItem orderItem);
	
	/**
	 * ɾ��������
	 * @param orderItem
	 * @return
	 */
	boolean delOrderItem(OrderItem orderItem);
}
