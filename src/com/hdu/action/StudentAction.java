package com.hdu.action;

import com.hdu.entities.Student;
import com.hdu.service.StudentService;

public class StudentAction extends BaseAction<Student>{

	private static final long serialVersionUID = 1L;
	
	private Integer id;

	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	private StudentService studentService;
	
	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}
	
	public String getByID(){
		request.put("byIDs", studentService.getByID(id));
		return "getByID";
	}
}
