package com.hdu.service.impl;

import java.util.List;

import com.hdu.dao.StudentDao;
import com.hdu.entities.Student;
import com.hdu.service.StudentService;

public class StudentServiceImpl implements StudentService{

	private StudentDao studentDao;
	
	@Override
	public void setStudentDao(StudentDao studentDao) {
		this.studentDao=studentDao;
	}

	@Override
	public List<Student> getByID(Integer stuID) {
		return studentDao.getByID(stuID);
	}

}
