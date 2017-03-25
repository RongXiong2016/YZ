/**
 * 
 */
package com.hdu.dao;

import java.util.List;

import com.hdu.entities.Admin;

/**
 * @author Administrator
 *
 */
public interface AdminDao {
//获得所有管理员
	public List<Admin> getAll();

	/**
	 * @param admin
	 */
	public void save(Admin admin);
}
