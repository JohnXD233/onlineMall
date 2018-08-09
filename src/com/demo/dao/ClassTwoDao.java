package com.demo.dao;

import java.util.List;

import com.demo.bean.ClassTwo;

public interface ClassTwoDao {
	/**
	 * ���ݶ�������� id ��ȡ����
	 * @param classTwo
	 * @return
	 */
	ClassTwo findClassTwo(ClassTwo classTwo);
	
	/**
	 * ���ݶ�����������ƻ�ȡ�ö���
	 * @param classTtwoName
	 * @return
	 */
	ClassTwo findClassTwoByName(String classTtwoName);
	
	List<ClassTwo> getClassTwos();
	
	boolean addClassTwo(ClassTwo classTwo);
	
	boolean alterClassTwo(ClassTwo classTwo);
	
	boolean delClassTwo(ClassTwo classTwo);
}
