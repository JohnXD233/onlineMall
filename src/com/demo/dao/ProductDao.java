package com.demo.dao;

import java.util.List;

import com.demo.bean.Product;

/**
 * ��Ʒ��Ϣ����
 * @author ��
 *
 */
public interface ProductDao {
	/**
	 * ��ѯָ����Ʒ
	 * @return
	 */
	Product findProduct(Product product);
	
	/**
	 * ��ѯ������Ʒ
	 * @return
	 */
	List<Product> getProducts();
	
	/**
	 * �޸���Ʒ��Ϣ
	 * @param product
	 * @return
	 */
	boolean alterProduct(Product product);
	
	/**
	 * ������Ʒ
	 * @param product
	 * @return
	 */
	boolean addProduct(Product product);
	
	/**
	 * ɾ����Ʒ��Ϣ����Ʒ�¼�
	 * @param product
	 * @return
	 */
	boolean delProduct(Product product);
}
