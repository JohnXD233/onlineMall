package com.demo.dao;

import java.util.List;

import com.demo.bean.Product;

/**
 * 商品信息操作
 * @author ·
 *
 */
public interface ProductDao {
	/**
	 * 查询指定商品
	 * @return
	 */
	Product findProduct(Product product);
	
	/**
	 * 查询所有商品
	 * @return
	 */
	List<Product> getProducts();
	
	/**
	 * 修改商品信息
	 * @param product
	 * @return
	 */
	boolean alterProduct(Product product);
	
	/**
	 * 增加商品
	 * @param product
	 * @return
	 */
	boolean addProduct(Product product);
	
	/**
	 * 删除商品信息，商品下架
	 * @param product
	 * @return
	 */
	boolean delProduct(Product product);
}
