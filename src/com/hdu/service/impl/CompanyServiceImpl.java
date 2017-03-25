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
	public void delete(Integer id) {
		companyDao.delete(id);
	}
	 
	@Override
	public void update(Integer id) {
		companyDao.update(id);
	}

	@Override
	public List<Company> queryFirstfour() {
		 
		return companyDao.queryFirstfour();
	}

 
	@Override
	public Company getById(Integer cpNum) {
		return companyDao.getById(cpNum);
		
	}
}
