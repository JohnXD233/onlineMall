package com.demo.bean;
/**
 * ��Ʒ��������
 * @author ��
 *
 */
public class ClassTwo {
	private int classtwoId;
	private String className;
	private int classoneId;//�����һ������ID
	public int getClasstwoId() {
		return classtwoId;
	}
	public void setClasstwoId(int classtwoId) {
		this.classtwoId = classtwoId;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public int getClassoneId() {
		return classoneId;
	}
	public void setClassoneId(int classoneId) {
		this.classoneId = classoneId;
	}
	@Override
	public String toString() {
		return "ClassTwo [classtwoId=" + classtwoId + ", className=" + className + ", classoneId=" + classoneId + "]";
	}
	public ClassTwo(int classtwoId, String className, int classoneId) {
		super();
		this.classtwoId = classtwoId;
		this.className = className;
		this.classoneId = classoneId;
	}
	public ClassTwo() {
		super();
	}
	
}
