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

	boolean delUser(User user);
}
