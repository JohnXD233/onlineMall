package com.demo.bean;
/**
 * 在线用户
 * @author ·
 *
 */
public class UserOnline {
	private String uname;
	private String upass;
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
	@Override
	public String toString() {
		return "UserOnline [uname=" + uname + ", upass=" + upass + "]";
	}
	public UserOnline(String uname, String upass) {
		super();
		this.uname = uname;
		this.upass = upass;
	}
	public UserOnline() {
		super();
	}
	
	
}
