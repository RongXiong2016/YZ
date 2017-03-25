/**
 * 
 */
package com.hdu.dao;

import com.hdu.entities.Student;

/**
 * @author Administrator
 *
 */
public interface StudentDao {
	//查询学生是否存在
	public Student login(Student student);
}
