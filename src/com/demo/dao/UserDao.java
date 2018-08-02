package com.demo.dao;

import java.util.List;
import com.demo.bean.User;
/**
 * 用户 数据的增删改查
 * @author ·
 *
 */
public interface UserDao {

	/**
	 * 查询单个用户
	 * @param user 只需传入用户名即可
	 * @return
	 */
	User findUser(User user);

	/**
	 * 查询所有用户
	 * @return
	 */
	List<User> getUsers();

	boolean delUser(User user);
}
