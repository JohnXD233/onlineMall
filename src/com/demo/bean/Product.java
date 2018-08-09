package com.demo.bean;
/**
 * …Ã∆∑¿‡
 * @author °§
 *
 */
public class Product {

	private int pid;
	private String pname;
	private String priceInMall;
	private String priceInMarket;
	private String describes;
	private String picture;
	private int classTwoId;
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPriceInMall() {
		return priceInMall;
	}
	public void setPriceInMall(String priceInMall) {
		this.priceInMall = priceInMall;
	}
	public String getPriceInMarket() {
		return priceInMarket;
	}
	public void setPriceInMarket(String priceInMarket) {
		this.priceInMarket = priceInMarket;
	}
	public String getDescribes() {
		return describes;
	}
	public void setDescribes(String describes) {
		this.describes = describes;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public int getClassTwoId() {
		return classTwoId;
	}
	public void setClassTwoId(int classTwoId) {
		this.classTwoId = classTwoId;
	}
	@Override
	public String toString() {
		return "Product [pid=" + pid + ", pname=" + pname + ", priceInMall=" + priceInMall + ", priceInMarket="
				+ priceInMarket + ", describes=" + describes + ", picture=" + picture + ", classTwoId=" + classTwoId
				+ "]";
	}
	public Product(int pid, String pname, String priceInMall, String priceInMarket, String describes, String picture,
			int classTwoId) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.priceInMall = priceInMall;
		this.priceInMarket = priceInMarket;
		this.describes = describes;
		this.picture = picture;
		this.classTwoId = classTwoId;
	}
	public Product() {
		super();
	}
	
}
