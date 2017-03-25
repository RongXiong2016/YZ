/**
 * 
 */
package com.hdu.action;

import java.util.Map;

import com.hdu.entities.Student;
import com.hdu.service.StudentService;
import com.opensymphony.xwork2.ActionContext;

/**
 * @author Administrator
 *
 */
public class StudentAction extends BaseAction<Student>{
	
	private StudentService studentService;
	
	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}
	//登录
	public String login(){
		Student student = studentService.login(model);
		if (student==null) {
			return "login";
		}else{
			session.put("student", student);
			return "index";//跳到首页
		}
	}
	//退出登录
	public String signout(){
		Map<String, Object> session = ActionContext.getContext().getSession();
		session.clear();
		return "signout";
	}
}
