package com.demo.dao;

import java.util.List;
import com.demo.bean.User;
/**
 * �û� ���ݵ���ɾ�Ĳ�
 * @author ��
 *
 */
public interface UserDao {

	/**
	 * ��ѯ�����û�
	 * @param user ֻ�贫���û�������
	 * @return
	 */
	User findUser(User user);

	/**
	 * ��ѯ�����û�
	 * @return
	 */
	List<User> getUsers();

	/**
	 * ɾ���û�������Ψһ��uid
	 * @param user 
	 * @return
	 */
	boolean delUser(User user);
	
	/**
	 * �û�ע�ᣬ�����û�
	 * @param user
	 * @return
	 */
	boolean addUser(User user);
	
	/**
	 * �޸��û���Ϣ:����uid��λ�û����޸�������Ϣ�������õ��Ǵ���һ��ȫ�µ�user��uname���䣬��������ҵ���߼�д����ֵ�����ֱ��ȫ����
	 * @param user
	 * @return
	 */
	boolean alterUser(User user);
}
