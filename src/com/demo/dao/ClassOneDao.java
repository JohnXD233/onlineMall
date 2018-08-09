package com.demo.dao;

import java.util.List;

import com.demo.bean.ClassOne;

public interface ClassOneDao {
	ClassOne findClassOne(ClassOne classOne);
	
	List<ClassOne> getClassOnes();
	
	boolean addClassOne(ClassOne classOne);
	
	boolean alterClassOne(ClassOne classOne);
	
	boolean delClassOne(ClassOne classOne);
}
