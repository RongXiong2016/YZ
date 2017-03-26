package com.hdu.dao;

import java.util.List;

import com.hdu.entities.Student;

public interface StudentDao {

	List<Student> getByID(Integer stuID);
}
