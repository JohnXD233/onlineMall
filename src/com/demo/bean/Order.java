package com.demo.bean;
/**
 * 订单
 * @author ·
 *
 */

import java.sql.Date;

public class Order {
	private int orderid;
	private Date orderTime;  //在 mysql 中 默认当前时间为    now()   Oracle中默认当前时间 sysdate
	private double price;
	private String state;
	private String address;
	private String phone;
	private String receiver;
	private int uid;//外键，用户id
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public Date getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	@Override
	public String toString() {
		return "Order [orderid=" + orderid + ", orderTime=" + orderTime + ", price=" + price + ", state=" + state
				+ ", address=" + address + ", phone=" + phone + ", receiver=" + receiver + ", uid=" + uid + "]";
	}
	public Order(int orderid, Date orderTime, double price, String state, String address, String phone, String receiver,
			int uid) {
		super();
		this.orderid = orderid;
		this.orderTime = orderTime;
		this.price = price;
		this.state = state;
		this.address = address;
		this.phone = phone;
		this.receiver = receiver;
		this.uid = uid;
	}
	public Order() {
		super();
	}
	
}
