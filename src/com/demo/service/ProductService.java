package com.demo.service;

import java.util.ArrayList;
import java.util.List;

import com.demo.bean.Product;
import com.demo.dao.ClassTwoDao;
import com.demo.dao.ProductDao;
import com.demo.dao.impl.ClassTwoDaoImpl;
import com.demo.dao.impl.ProductDaoImpl;

public class ProductService {
	private ProductDao productDao=new ProductDaoImpl();
	private ClassTwoDao classTwoDao= new ClassTwoDaoImpl();
	
	/**
	 * 根据分类名称，找到该分类下的所有商品（目前，拿全部数据，刚好一页的数据）
	 * @param classtwoName 传二级分类的名称，如，blue-tuxedo
	 * @return
	 */
	public List<Product> getProducts(String classTwoName){
		List<Product> list =new ArrayList<>();
		List<Product> list2=productDao.getProducts();
		
		int classtwoId=classTwoDao.findClassTwoByName(classTwoName).getClasstwoId();
		
		
		for(Product product :list2) {
			if(product.getClassTwoId()==classtwoId)
			{
				list.add(product);
			}
		}
		
		return list;
	}
	
	/**
	 * 根据传入的 productId pid 获取商品对象
	 * @param pid
	 * @return
	 */
	public Product findProduct(int pid) {
		Product product=new Product();
		product.setPid(pid);
		return productDao.findProduct(product);
	}
	
	/**
	 * 查询热门商品
	 * @param classTwoId
	 * @return
	 */
	public List<Product> findHotProducts(int classTwoId){
		return productDao.findHotProducts(classTwoId);
	}
	
	/**
	 * 根据二级分类id查询商品
	 * @param classTwoId
	 * @return
	 */
	public List<Product> findProductByClassTwoId(int classTwoId){
		List<Product> list=new ArrayList<>();
		
		List<Product> source=productDao.getProducts();
		for(Product product : source) {
			if(product.getClassTwoId()==classTwoId)
				list.add(product);
		}
		
		return list;
	}
}
