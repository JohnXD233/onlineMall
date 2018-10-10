package com.demo.tools;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
public class SendEmail {
	/**
	 * 发送qq邮件
	 * @param msg  邮件内容
	 * @param to1     收件人email
	 * @return
	 */
	public static boolean sendEmail(String msg,String to1)
    {
        //发送QQ邮件,已经实现

        // 收件人电子邮箱
        String to = "394027602@qq.com";//目标激活。要注册激活的用户email  本来是用传参to1为收件人邮箱

        // 发件人电子邮箱
        String from = "1203056933@qq.com";//管理员，服务端

        // 指定发送邮件的主机为 smtp.qq.com
        String host = "smtp.qq.com";  //QQ 邮件服务器

        // 获取系统属性
        //Properties properties = System.getProperties();
        
        Properties properties = new Properties();

        // 设置邮件服务器
        properties.setProperty("mail.smtp.host", host);
        properties.put("mail.store.protocol" , "stmt");//设置协议
        properties.put("mail.smtp.port", 25);//设置端口


        properties.put("mail.smtp.auth", "true");
        // 获取默认session对象
        Session session = Session.getDefaultInstance(properties,new Authenticator(){
            public PasswordAuthentication getPasswordAuthentication()
            {
                return new PasswordAuthentication("1203056933@qq.com", "nqeyacfcocghjacj"); //发件人邮件用户名、密码
            }
        });

        try{
            // 创建默认的 MimeMessage 对象
            MimeMessage message = new MimeMessage(session);

            // Set From: 头部头字段
            message.setFrom(new InternetAddress(from));

            // Set To: 头部头字段
            message.addRecipient(Message.RecipientType.TO,
                    new InternetAddress(to));

            // Set Subject: 头部头字段
            message.setSubject("This is the Subject Line!");

            // 设置消息体
            //message.setText(msg);
            message.setContent(msg , "text/html;charset=utf-8");

            // 发送消息
            Transport.send(message);
            //System.out.println("Sent message successfully....from runoob.com");
            return true;
        }catch (MessagingException mex) {
            mex.printStackTrace();
        }
        return false;
    }
}
