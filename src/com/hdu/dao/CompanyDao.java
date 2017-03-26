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
	public void cpupdate(Integer id);
	public void cpdelete(Integer id);
	public List<Company> getAll();
}
