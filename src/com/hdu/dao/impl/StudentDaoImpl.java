package com.hdu.dao.impl;

import java.util.List;

import com.hdu.dao.BaseDao;
import com.hdu.dao.StudentDao;
import com.hdu.entities.Student;

public class StudentDaoImpl extends BaseDao implements  StudentDao{

	@Override
	@SuppressWarnings("unchecked")
	public List<Student> getByID(Integer stuID) {
		String hql="from Student stu where stu.stuID=?";
		return getSession().createQuery(hql).setInteger(0, stuID).list();
	}

}
