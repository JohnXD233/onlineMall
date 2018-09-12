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
	 * 查出所有的购物车记录，service中再筛选，前提是数据量不大，这样可以，
	 * @param uid
	 * @return
	 */
	List<ShoppingCar> findRecords();
	
	/**
	 * 用唯一标识一条购物车记录的 carid 主键来定位删除
	 * @param carid
	 * @return
	 */
	boolean delRecord(int carid);
	
	/**
	 * 增加购物车信息
	 * @param shoppingCar
	 * @return
	 */
	boolean addRecord(ShoppingCar shoppingCar);
	
	/**
	 * 根据用户的uid，清空购物车
	 * @param uid
	 * @return
	 */
	boolean delAllRecord(int uid);
}
