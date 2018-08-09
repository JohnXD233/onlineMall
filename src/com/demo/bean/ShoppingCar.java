package com.demo.bean;
/**
 * 购物车
 * @author ·
 *
 */
public class ShoppingCar {
	private int uid;	//用户id，外键
	private int pid;	//商品id，外键
	private int carid; //购物车id，主键
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getCarid() {
		return carid;
	}
	public void setCarid(int carid) {
		this.carid = carid;
	}
	public ShoppingCar() {
		super();
	}
	public ShoppingCar(int uid, int pid, int carid) {
		super();
		this.uid = uid;
		this.pid = pid;
		this.carid = carid;
	}
	@Override
	public String toString() {
		return "ShoppingCar [uid=" + uid + ", pid=" + pid + ", carid=" + carid + "]";
	}
}
