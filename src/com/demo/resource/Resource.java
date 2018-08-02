package com.demo.resource;

import java.util.ResourceBundle;

public class Resource {

	//这个静态的串专门负责指定， 读写怎样的数据源，如：txt,excel,mysql,oracle...
	

		public static String url;
		public static String userName;
		public static String password;
		public static String driverName;
		
		static {
			ResourceBundle rb = ResourceBundle.getBundle("com.demo.resource.resource");
		
			url = rb.getString("url");
			userName = rb.getString("userName");
			password = rb.getString("password");
			driverName = rb.getString("driverName");
			
		}
}
