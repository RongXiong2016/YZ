/**
 * 
 */
package com.hdu.service;

import java.util.List;

import com.hdu.dao.CompanyDao;
import com.hdu.entities.Company;

/**
 * @author Administrator
 *
 */
public interface CompanyService {

	public List<Company> getBycpBudget(Integer cpBudget);
	public List<Company> getAll();
	
	
	public void delete(Integer id);
	
	public void update(Integer id);
	
	void setCompanyDao(CompanyDao companyDao);
 
	public List<Company> queryFirstfour();
	/**
	 * @param cpNum
	 */
	public Company getById(Integer cpNum);
}
