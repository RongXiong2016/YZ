/**
 * 
 */
package com.hdu.dao;

import java.util.List;

import com.hdu.entities.Company;

/**
 * @author Administrator
 *
 */
public interface CompanyDao {
	//根据公司预算筛选公司
	public List<Company> getBycpBudget(Integer cpBudget);
	public void update(Integer id);
	public void delete(Integer id);
	public List<Company> getAll();
	 
	public List<Company> queryFirstfour();
 
	public Company getById(Integer cpNum);
}
