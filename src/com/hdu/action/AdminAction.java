/**
 * 
 */
package com.hdu.action;

import com.hdu.entities.Admin;
import com.hdu.service.AdminService;

/**
 * @author Administrator
 *
 */
public class AdminAction extends BaseAction<Admin>{
	private AdminService adminService;

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	//查找
	public String list() {

		request.put("admins", adminService.getAll());

		return "listadmin";
	}
	
	public String input(){
		return "input";
	}
	 public void save(){
		 adminService.save(model);
	 }
}
