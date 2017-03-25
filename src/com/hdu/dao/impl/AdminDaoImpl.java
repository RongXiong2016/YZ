/**
 * 
 */
package com.hdu.dao.impl;

import java.util.List;

import com.hdu.dao.AdminDao;
import com.hdu.dao.BaseDao;
import com.hdu.entities.Admin;

/**
 * @author Administrator
 *
 */
public class AdminDaoImpl extends BaseDao implements AdminDao{
 
	@SuppressWarnings("unchecked")
	@Override
	public List<Admin> getAll() {
		String hql="from Admin";
		return getSession().createQuery(hql).list();
	}

	 
	@Override
	public void save(Admin admin) {
		getSession().saveOrUpdate(admin);
		
	}

}
