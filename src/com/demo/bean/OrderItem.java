package com.demo.bean;
/**
 * ������
 * @author ��
 *
 */
public class OrderItem {
	private int itemId;
	private int pid;//�������ƷID
	private int orderid;//���������ID
	private int number;//��������
	private int sum;//С��
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	@Override
	public String toString() {
		return "OrderItem [itemId=" + itemId + ", pid=" + pid + ", orderid=" + orderid + ", number=" + number + ", sum="
				+ sum + "]";
	}
	public OrderItem(int itemId, int pid, int orderid, int number, int sum) {
		super();
		this.itemId = itemId;
		this.pid = pid;
		this.orderid = orderid;
		this.number = number;
		this.sum = sum;
	}
	public OrderItem() {
		super();
	}
	
}
