package com.demo.tools;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
public class SendEmail {
	/**
	 * ����qq�ʼ�
	 * @param msg  �ʼ�����
	 * @param to1     �ռ���email
	 * @return
	 */
	public static boolean sendEmail(String msg,String to1)
    {
        //����QQ�ʼ�,�Ѿ�ʵ��

        // �ռ��˵�������
        String to = "394027602@qq.com";//Ŀ�꼤�Ҫע�ἤ����û�email  �������ô���to1Ϊ�ռ�������

        // �����˵�������
        String from = "1203056933@qq.com";//����Ա�������

        // ָ�������ʼ�������Ϊ smtp.qq.com
        String host = "smtp.qq.com";  //QQ �ʼ�������

        // ��ȡϵͳ����
        //Properties properties = System.getProperties();
        
        Properties properties = new Properties();

        // �����ʼ�������
        properties.setProperty("mail.smtp.host", host);
        properties.put("mail.store.protocol" , "stmt");//����Э��
        properties.put("mail.smtp.port", 25);//���ö˿�


        properties.put("mail.smtp.auth", "true");
        // ��ȡĬ��session����
        Session session = Session.getDefaultInstance(properties,new Authenticator(){
            public PasswordAuthentication getPasswordAuthentication()
            {
                return new PasswordAuthentication("1203056933@qq.com", "nqeyacfcocghjacj"); //�������ʼ��û���������
            }
        });

        try{
            // ����Ĭ�ϵ� MimeMessage ����
            MimeMessage message = new MimeMessage(session);

            // Set From: ͷ��ͷ�ֶ�
            message.setFrom(new InternetAddress(from));

            // Set To: ͷ��ͷ�ֶ�
            message.addRecipient(Message.RecipientType.TO,
                    new InternetAddress(to));

            // Set Subject: ͷ��ͷ�ֶ�
            message.setSubject("This is the Subject Line!");

            // ������Ϣ��
            //message.setText(msg);
            message.setContent(msg , "text/html;charset=utf-8");

            // ������Ϣ
            Transport.send(message);
            //System.out.println("Sent message successfully....from runoob.com");
            return true;
        }catch (MessagingException mex) {
            mex.printStackTrace();
        }
        return false;
    }
}
