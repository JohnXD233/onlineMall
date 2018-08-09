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
	 * ������еĹ��ﳵ��¼��service����ɸѡ��ǰ���������������������ԣ�����Ϊ�˷������ֱ�Ӵ�UID�������Ƿ����ҵ���߼�
	 * @param uid
	 * @return
	 */
	List<ShoppingCar> findRecords(int uid);
	
	/**
	 * ��Ψһ��ʶһ�����ﳵ��¼�� carid ��������λɾ��
	 * @param carid
	 * @return
	 */
	boolean delRecord(int carid);
}
