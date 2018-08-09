package com.demo.bean;
/**
 * 商品一级分类
 * @author ·
 *
 */
public class ClassOne {
	private int classoneId;
	private String className;
	
	public ClassOne() {
		super();
	}
	public ClassOne(int classoneId, String className) {
		super();
		this.classoneId = classoneId;
		this.className = className;
	}
	@Override
	public String toString() {
		return "ClassOne [classoneId=" + classoneId + ", className=" + className + "]";
	}
	public int getClassoneId() {
		return classoneId;
	}
	public void setClassoneId(int classoneId) {
		this.classoneId = classoneId;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
}
