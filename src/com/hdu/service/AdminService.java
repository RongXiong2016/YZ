/**
 * 
 */
package com.hdu.service;

import java.util.List;

import com.hdu.dao.AdminDao;
import com.hdu.entities.Admin;

/**
 * @author Administrator
 *
 */
public interface AdminService {
	public List<Admin> getAll();
	void setAdminDao(AdminDao adminDao);
	/**
	 * @param admin
	 */
	public void save(Admin admin);
}
