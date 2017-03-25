/**
 * 
 */
package com.hdu.dao.impl;

import com.hdu.dao.BaseDao;
import com.hdu.dao.StudentDao;
import com.hdu.entities.Student;

/**
 * @author Administrator
 *
 */
public class StudentDaoImpl extends BaseDao implements StudentDao{

	 
	@Override
	public Student login(Student student) {
		String hql = "from Student stu where stu.stuId=:stuId and stu.stuName =:stuName";
		return  (Student) getSession()
				.createQuery(hql)
				.setString("stuId", student.getStuId())
				.setString("stuName",student.getStuName())
				.uniqueResult();
		 
	}
}
