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
	 * ���ݷ������ƣ��ҵ��÷����µ�������Ʒ��Ŀǰ����ȫ�����ݣ��պ�һҳ�����ݣ�
	 * @param classtwoName ��������������ƣ��磬blue-tuxedo
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
	 * ���ݴ���� productId pid ��ȡ��Ʒ����
	 * @param pid
	 * @return
	 */
	public Product findProduct(int pid) {
		Product product=new Product();
		product.setPid(pid);
		return productDao.findProduct(product);
	}
}
