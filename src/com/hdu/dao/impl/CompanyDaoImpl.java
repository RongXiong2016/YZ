/**
 * 
 */
package com.hdu.dao.impl;

import java.util.List;

import com.hdu.dao.BaseDao;
import com.hdu.dao.CompanyDao;
import com.hdu.entities.Company;

/**
 * @author Administrator
 *
 */
public class CompanyDaoImpl extends BaseDao implements CompanyDao{

	 //根据公司预算筛选公司
	@SuppressWarnings("unchecked")
	@Override
	public List<Company> getBycpBudget(Integer cpBudget) {
		String hql = "from Company cp where cp.cpBudget =:cpBudget ";
		return getSession().createQuery(hql).setInteger("cpBudget", cpBudget).list();
	}
	//查询所有公司
	@SuppressWarnings("unchecked")
	@Override
	public List<Company> getAll(){
		String hql="from Company";
		return getSession().createQuery(hql).list();
	}
	
	//根据公司id删除
	public void cpdelete(Integer id){
		String hql="delete from Company cp where cp.id=?";
		getSession().createQuery(hql).setInteger(0, id).executeUpdate();
	}
	
	//更新公司
	public void cpupdate(Integer id){
		String hql="update Company cp set cp.cpAudit='通过审核'  where cp.id=?";
		getSession().createQuery(hql).setInteger(0, id).executeUpdate();
	}
}
