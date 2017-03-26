/**
 * 
 */
package com.hdu.service.impl;

import java.util.List;

import com.hdu.dao.CompanyDao;
import com.hdu.entities.Company;
import com.hdu.service.CompanyService;

/**
 * @author Administrator
 *
 */
public class CompanyServiceImpl implements CompanyService{
private CompanyDao companyDao;
	
	public void setCompanyDao(CompanyDao companyDao) {
		this.companyDao = companyDao;
	}

	 
	@Override
	public List<Company> getBycpBudget(Integer cpBudget) {
		 
		return companyDao.getBycpBudget(cpBudget);
	}

	 
	@Override
	public List<Company> getAll() {
		return companyDao.getAll();
	}

	 
	@Override
	public void cpdelete(Integer id) {
		companyDao.cpdelete(id);
	}

	 
	@Override
	public void cpupdate(Integer id) {
		companyDao.cpupdate(id);
	}
}
