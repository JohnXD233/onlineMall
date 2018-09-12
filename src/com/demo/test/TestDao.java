package com.demo.test;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;

import com.demo.bean.ClassTwo;
import com.demo.bean.Product;
import com.demo.bean.ShoppingCar;
import com.demo.bean.User;
import com.demo.dao.impl.ClassTwoDaoImpl;
import com.demo.dao.impl.ProductDaoImpl;
import com.demo.dao.impl.ShoppingCarDaoImpl;
import com.demo.dao.impl.UserDaoImpl;
import com.demo.service.ProductService;
import com.demo.service.ShoppingCarService;
/**
 * 测试操作数据库 的 函数类
 * @author ·
 *
 */
public class TestDao {
	
	@Test
	public void  testAddUser() {
		
	}

	@Test
	public void testFindUser() {
		User user=new User();
		user.setUid(1);
		
		User user2=null;
		
		user2=new UserDaoImpl().findUser(user);
		
		Assert.assertNotNull(user);
	}
	
	@Test
	public void testFindClasstwobyname() {
		ClassTwo classTwo=new ClassTwoDaoImpl().findClassTwoByName("dinner-jackets");
		Assert.assertNotNull(classTwo);
	}
	
	@Test
	public void testFindProducts() {
		List<Product> list=new ProductDaoImpl().getProducts();
		Assert.assertNotNull(list);
	}
	
	@Test
	public void testFindProduct() {
		Product product=new ProductService().findProduct(182);
		Assert.assertNotNull(product);
	}
	
	@Test
	public void testfindRecords() {
	/*	List<ShoppingCar> list=new ShoppingCarDaoImpl().findRecords();
		Assert.assertNotNull(list);*/
		List<ShoppingCar> list=new ShoppingCarService().findRecords(1);
		System.out.println(list.size());
		Assert.assertNotNull(list);
	
	}
}
