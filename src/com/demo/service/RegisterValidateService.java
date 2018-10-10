package com.demo.service;

import com.demo.bean.User;
import com.demo.dao.UserDao;
import com.demo.dao.impl.UserDaoImpl;
import com.demo.tools.SendEmail;

public class RegisterValidateService {
	//�û�ע�ᣬ�ʼ�����ķ�����
	
	//���ͼ����ʼ�  ���û�ע��û���������棬�û�ע�����Ϣ�ô��ε���ʽ��
	public void sendEmailForActive(User user) {
		///�ʼ�������
        StringBuffer sb=new StringBuffer("����������Ӽ����˺ţ�48Сʱ��Ч����������ע���˺ţ�����ֻ��ʹ��һ�Σ��뾡�켤�</br>");
        sb.append("<a href=\"http://localhost:8080/onlineMall/userServlet?oper=activate&email=");
        sb.append(user.getEmail()); 
        sb.append("&validateCode="); 
        sb.append(user.getActivecode());
        sb.append("\">http://localhost:8080/onlineMall/userServlet?oper=activate&email="); 
        sb.append(user.getEmail());
        sb.append("&validateCode=");
        sb.append(user.getActivecode());
        sb.append("</a>");
        
        //�����ʼ�
        SendEmail.sendEmail(sb.toString(),user.getEmail());
        System.out.println("�����ʼ�");

	}
	
	//�ؼ�����ȡ�û��Ƿ񼤻�
	public boolean checkUserForActive(String email,String activeCode) {
		//ͨ��Ŀ�� email�ҵ�Ψһ���û��� ƥ��activecode�Ƿ�����ݿ�User�ļ�������һ�������activeCode��url�����
		UserDao userDao=new UserDaoImpl();
		
		User user=userDao.findUserByEmail(email);
		if(user!=null) {
			if(user.getState()==1) {
				//û����
				if(activeCode.equals(user.getActivecode())) {  
                    //����ɹ��� //�������û��ļ���״̬��Ϊ�Ѽ��� 
                    System.out.println("==sq==="+user.getState());
                    user.setState(0);//��״̬��Ϊ����
                    System.out.println("==sh==="+user.getState());
                    userDao.alterUser(user);
                    System.out.println("����ɹ�");
                    return true;
                } else {  
                   System.out.println("�����벻��ȷ");  
                   return false;
                } 
			}
			else {
				System.out.println("���û��Ѽ����ֱ�ӵ�¼");  
				return true;
			}
		}
		else {
			System.out.println("���û���δע�ᣬ�Ҳ�������");
			return false;
		}
	}
}
