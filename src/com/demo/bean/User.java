package com.demo.bean;

public class User {
	private int uid;
	private String uname;
	private String upass;
	
	public User(String uname,String upass) {
		super();
		this.uname=uname;
		this.upass=upass;
	}
	
	public User() {
		super();
	}
	public User(int uid, String uname, String upass, String realname, String email, String address, String phone,
			int state, String activecode) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.upass = upass;
		this.realname = realname;
		this.email = email;
		this.address = address;
		this.phone = phone;
		this.state = state;
		this.activecode = activecode;
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", upass=" + upass + ", realname=" + realname + ", email="
				+ email + ", address=" + address + ", phone=" + phone + ", state=" + state + ", activecode="
				+ activecode + "]";
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpass() {
		return upass;
	}
	public void setUpass(String upass) {
		this.upass = upass;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getActivecode() {
		return activecode;
	}
	public void setActivecode(String activecode) {
		this.activecode = activecode;
	}
	private String realname;
	private String email;
	private String address;
	private String phone;
	private int state;
	private String activecode;
	
	

}
