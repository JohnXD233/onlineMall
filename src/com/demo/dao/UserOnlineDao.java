package com.demo.dao;

import java.util.List;

import com.demo.bean.User;
import com.demo.bean.UserOnline;

/**
 * 在线用户的入库，出库
 * @author ·
 *
 */
public interface UserOnlineDao {
	/**
	 * 查询所有的在线用户
	 * @return
	 */
	List<UserOnline> getUsersOnline();
	
	/**
	 * 查询某个用户是否在线,返回为空表示不在线
	 * @param user
	 * @return
	 */
	UserOnline findUserOnline(User user);
	
	/**
	 * 用户下线
	 * @param user
	 * @return
	 */
	boolean delUserOnline(User user);
	
	/**
	 * 用户上线
	 * @param user
	 * @return
	 */
	boolean addUserOnline(User user);
	
	/**
	 * 修改线上用户信息，uname upass，这边在用户信息修改的时候也要更新，外键
	 * @param user uname upass 均外键
	 * @return
	 */
	boolean alterUerOnline(User user);
}
