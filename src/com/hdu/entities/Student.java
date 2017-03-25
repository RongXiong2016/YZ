package com.hdu.entities;

/**
 * Student entity. @author MyEclipse Persistence Tools
 */

public class Student implements java.io.Serializable {

	// Fields

	private String stuId;
	private String stuName;

	// Constructors

	/** default constructor */
	public Student() {
	}

	/** full constructor */
	public Student(String stuName) {
		this.stuName = stuName;
	}

	// Property accessors

	public String getStuId() {
		return this.stuId;
	}

	public void setStuId(String stuId) {
		this.stuId = stuId;
	}

	public String getStuName() {
		return this.stuName;
	}

	public void setStuName(String stuName) {
		this.stuName = stuName;
	}

}