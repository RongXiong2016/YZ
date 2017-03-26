package com.hdu.service;

import java.util.List;

import com.hdu.dao.StudentDao;
import com.hdu.entities.Student;

public interface StudentService {

	void setStudentDao(StudentDao studentDao);
	
	List<Student> getByID(Integer stuID);
}
