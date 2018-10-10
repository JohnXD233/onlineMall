package com.demo.service;

import java.util.ArrayList;
import java.util.List;

import com.demo.bean.ShoppingCar;
import com.demo.dao.ShoppingCarDao;
import com.demo.dao.impl.ShoppingCarDaoImpl;

public class ShoppingCarService {
	private ShoppingCarDao shoppingCarDao= new ShoppingCarDaoImpl();
	
	public ShoppingCar findRecord(int pid,int uid) {
		ShoppingCar shoppingCar=new ShoppingCar();
		shoppingCar.setPid(pid);
		shoppingCar.setUid(uid);
		
		return shoppingCarDao.findRecord(shoppingCar);
	}
	
	public List<ShoppingCar> findRecords(int uid){
		List<ShoppingCar> shoppingCars=shoppingCarDao.findRecords();
		List<ShoppingCar> shoppingCars2=new ArrayList<>();
		
		if(shoppingCars!=null) {
			for(ShoppingCar shoppingCar : shoppingCars) {
				if(shoppingCar.getUid() == uid)
				{
					shoppingCars2.add(shoppingCar);
				}
			}
			return shoppingCars2;
		}
		else {
			return null;
		}
	}
	
	/**
	 * 删除一条购物车记录
	 * @param carid
	 * @return
	 */
	public boolean delRecord(int carid) {
		return shoppingCarDao.delRecord(carid);
	}
	
	/**
	 * 添加到购物车
	 * @param shoppingCar
	 * @return
	 */
	public boolean addRecord(ShoppingCar shoppingCar) {
		return shoppingCarDao.addRecord(shoppingCar);
	}

	/**
	 * 清空购物车，根据用户的uid
	 * @param uid
	 * @return
	 */
	public boolean delAllRecord(int uid) {
		return shoppingCarDao.delAllRecord(uid);
	}
}
