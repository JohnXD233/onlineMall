package com.demo.bean;
/**
 * ���ﳵ
 * @author ��
 *
 */
public class ShoppingCar {
	private int uid;	//�û�id�����
	private int pid;	//��Ʒid�����
	private int carid; //���ﳵid������
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
