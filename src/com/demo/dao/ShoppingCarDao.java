package com.demo.dao;

import java.util.List;

import com.demo.bean.ShoppingCar;

/**
 * ���ﳵ������
 * @author ��
 *
 */
public interface ShoppingCarDao {
	/**
	 * ���ݹ��ﳵ�� ��Ʒpid UID  ��� ������Ϣ��һ��UID�����ж���pid,�������������飩
	 * @param shoppingCar
	 * @return
	 */
	ShoppingCar findRecord(ShoppingCar shoppingCar);
	
	/**
	 * ������еĹ��ﳵ��¼��service����ɸѡ��ǰ���������������������ԣ�
	 * @param uid
	 * @return
	 */
	List<ShoppingCar> findRecords();
	
	/**
	 * ��Ψһ��ʶһ�����ﳵ��¼�� carid ��������λɾ��
	 * @param carid
	 * @return
	 */
	boolean delRecord(int carid);
	
	/**
	 * ���ӹ��ﳵ��Ϣ
	 * @param shoppingCar
	 * @return
	 */
	boolean addRecord(ShoppingCar shoppingCar);
	
	/**
	 * �����û���uid����չ��ﳵ
	 * @param uid
	 * @return
	 */
	boolean delAllRecord(int uid);
}
