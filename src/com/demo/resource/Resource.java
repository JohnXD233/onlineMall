package com.demo.resource;

import java.util.ResourceBundle;

public class Resource {

	//�����̬�Ĵ�ר�Ÿ���ָ���� ��д����������Դ���磺txt,excel,mysql,oracle...
	

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
