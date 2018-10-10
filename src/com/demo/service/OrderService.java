package com.demo.service;

import java.util.List;

import com.demo.bean.Order;
import com.demo.dao.OrderDao;
import com.demo.dao.impl.OrderDaoImpl;

public class OrderService {
	private OrderDao orderDao=new OrderDaoImpl();
	
	/**
	 * ��ѯ���������� ������orderid
	 * @param order
	 * @return
	 */
	public Order findOrder(Order order) {
		return orderDao.findOrder(order);
	}
	
	/**
	 * ��ѯ���������� uid
	 * @param order
	 * @return
	 */
	public Order findOrderByUid(Order order) {
		return orderDao.findOrderByUid(order);
	}
	
	/**
	 * ��ѯ���ж���
	 * @return
	 */
	public List<Order> getOrders(){
		return orderDao.getOrders();
	}
	
	/**
	 * ���Ӷ���
	 * @param order
	 * @return
	 */
	public boolean addOrder(Order order) {
		return orderDao.addOrder(order);
	}
	
	/**
	 * ɾ������
	 * @param order
	 * @return
	 */
	public boolean delOrder(Order order) {
		return orderDao.delOrder(order);
	}
	
	/**
	 * �޸Ķ������޸Ķ���״̬
	 * @param order
	 * @return
	 */
	public boolean alterOrderForState(Order order) {
		
		return orderDao.alterOrder(order);
	}
	
	/**
	 * �޸Ķ������޸Ķ�����Ϣ(�ջ���,��ϵ��ʽ,�ͻ���ַ)
	 * @param order
	 * @return
	 */
	public boolean alterOrderForInfo(Order order) {
		return orderDao.alterOrder(order);
	}
}
