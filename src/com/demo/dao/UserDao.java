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

	/**
	 * 删除用户，根据唯一的uid
	 * @param user 
	 * @return
	 */
	boolean delUser(User user);
	
	/**
	 * 用户注册，增加用户
	 * @param user
	 * @return
	 */
	boolean addUser(User user);
	
	/**
	 * 修改用户信息:根据uid定位用户，修改其他信息，这边最好的是传入一个全新的user，uname不变，其他都在业务逻辑写好了值，这边直接全部改
	 * @param user
	 * @return
	 */
	boolean alterUser(User user);
}
