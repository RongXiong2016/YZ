/**
 * 
 */
package com.hdu.service.impl;

import java.util.List;

import com.hdu.dao.AdminDao;
import com.hdu.entities.Admin;
import com.hdu.service.AdminService;

/**
 * @author Administrator
 *
 */
public class AdminServiceImpl implements AdminService{

	private AdminDao adminDao;

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}
	@Override
	public List<Admin> getAll() {
		// TODO Auto-generated method stub
		return adminDao.getAll();
	}
	 
	@Override
	public void save(Admin admin) {
		adminDao.save(admin);
	}

}
