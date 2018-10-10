package com.demo.service;

import java.util.List;

import com.demo.bean.User;
import com.demo.dao.UserDao;
import com.demo.dao.impl.UserDaoImpl;

public class UserService {
	private UserDao userDao=new UserDaoImpl();
	
	public User findUser(User user) {
		return userDao.findUser(user);
	}
	
	public List<User> getUsers(){
		return userDao.getUsers();
	}
	
	public boolean addUser(User user) {
		return userDao.addUser(user);
	}
	
	public boolean altUser(User user) {
		return userDao.alterUser(user);
	}
	
	public boolean delUser(int uid) {
		User user=new User();
		return userDao.delUser(user);
	}
}
