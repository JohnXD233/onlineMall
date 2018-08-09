package com.demo.dao;

import java.util.List;

import com.demo.bean.ShoppingCar;

/**
 * 购物车操作类
 * @author ·
 *
 */
public interface ShoppingCarDao {
	/**
	 * 根据购物车中 商品pid UID  查出 整条信息（一个UID可能有多条pid,所以两个条件查）
	 * @param shoppingCar
	 * @return
	 */
	ShoppingCar findRecord(ShoppingCar shoppingCar);
	
	/**
	 * 查出所有的购物车记录，service中再筛选，前提是数据量不大，这样可以，但是为了方便这边直接传UID，不管是否包含业务逻辑
	 * @param uid
	 * @return
	 */
	List<ShoppingCar> findRecords(int uid);
	
	/**
	 * 用唯一标识一条购物车记录的 carid 主键来定位删除
	 * @param carid
	 * @return
	 */
	boolean delRecord(int carid);
}
