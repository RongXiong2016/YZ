/**
 * 
 */
package com.hdu.service.impl;

import com.hdu.dao.StudentDao;
import com.hdu.entities.Student;
import com.hdu.service.StudentService;

/**
 * @author Administrator
 *
 */
public class StudentServiceImpl implements StudentService{

	private StudentDao studentDao;
	 
	public void setStudentDao(StudentDao studentDao) {
		this.studentDao = studentDao;
	}

	@Override
	public Student login(Student student) {
		 return this.studentDao.login(student);
	}

}
