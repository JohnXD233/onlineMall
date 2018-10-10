package com.demo.service;

import com.demo.bean.User;
import com.demo.dao.UserDao;
import com.demo.dao.impl.UserDaoImpl;
import com.demo.tools.SendEmail;

public class RegisterValidateService {
	//用户注册，邮件激活的服务类
	
	//发送激活邮件  （用户注册没放在这里面，用户注册的信息用传参的形式）
	public void sendEmailForActive(User user) {
		///邮件的内容
        StringBuffer sb=new StringBuffer("点击下面链接激活账号，48小时生效，否则重新注册账号，链接只能使用一次，请尽快激活！</br>");
        sb.append("<a href=\"http://localhost:8080/onlineMall/userServlet?oper=activate&email=");
        sb.append(user.getEmail()); 
        sb.append("&validateCode="); 
        sb.append(user.getActivecode());
        sb.append("\">http://localhost:8080/onlineMall/userServlet?oper=activate&email="); 
        sb.append(user.getEmail());
        sb.append("&validateCode=");
        sb.append(user.getActivecode());
        sb.append("</a>");
        
        //发送邮件
        SendEmail.sendEmail(sb.toString(),user.getEmail());
        System.out.println("发送邮件");

	}
	
	//关键，获取用户是否激活
	public boolean checkUserForActive(String email,String activeCode) {
		//通过目标 email找到唯一的用户， 匹配activecode是否和数据库User的激活码中一样，这个activeCode是url传达的
		UserDao userDao=new UserDaoImpl();
		
		User user=userDao.findUserByEmail(email);
		if(user!=null) {
			if(user.getState()==1) {
				//没激活
				if(activeCode.equals(user.getActivecode())) {  
                    //激活成功， //并更新用户的激活状态，为已激活 
                    System.out.println("==sq==="+user.getState());
                    user.setState(0);//把状态改为激活
                    System.out.println("==sh==="+user.getState());
                    userDao.alterUser(user);
                    System.out.println("激活成功");
                    return true;
                } else {  
                   System.out.println("激活码不正确");  
                   return false;
                } 
			}
			else {
				System.out.println("该用户已激活，请直接登录");  
				return true;
			}
		}
		else {
			System.out.println("该用户还未注册，找不到邮箱");
			return false;
		}
	}
}
