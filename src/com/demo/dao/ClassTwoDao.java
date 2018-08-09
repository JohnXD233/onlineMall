package com.demo.dao;

import java.util.List;

import com.demo.bean.ClassTwo;

public interface ClassTwoDao {
	/**
	 * 根据二级分类的 id 获取对象
	 * @param classTwo
	 * @return
	 */
	ClassTwo findClassTwo(ClassTwo classTwo);
	
	/**
	 * 根据二级分类的名称获取该对象
	 * @param classTtwoName
	 * @return
	 */
	ClassTwo findClassTwoByName(String classTtwoName);
	
	List<ClassTwo> getClassTwos();
	
	boolean addClassTwo(ClassTwo classTwo);
	
	boolean alterClassTwo(ClassTwo classTwo);
	
	boolean delClassTwo(ClassTwo classTwo);
}
