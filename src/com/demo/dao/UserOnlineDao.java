package com.demo.dao;

import java.util.List;

import com.demo.bean.User;
import com.demo.bean.UserOnline;

/**
 * �����û�����⣬����
 * @author ��
 *
 */
public interface UserOnlineDao {
	/**
	 * ��ѯ���е������û�
	 * @return
	 */
	List<UserOnline> getUsersOnline();
	
	/**
	 * ��ѯĳ���û��Ƿ�����,����Ϊ�ձ�ʾ������
	 * @param user
	 * @return
	 */
	UserOnline findUserOnline(User user);
	
	/**
	 * �û�����
	 * @param user
	 * @return
	 */
	boolean delUserOnline(User user);
	
	/**
	 * �û�����
	 * @param user
	 * @return
	 */
	boolean addUserOnline(User user);
	
	/**
	 * �޸������û���Ϣ��uname upass��������û���Ϣ�޸ĵ�ʱ��ҲҪ���£����
	 * @param user uname upass �����
	 * @return
	 */
	boolean alterUerOnline(User user);
}
