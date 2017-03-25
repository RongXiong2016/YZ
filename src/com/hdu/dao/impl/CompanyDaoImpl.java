/**
 * 
 */
package com.hdu.dao.impl;

import java.util.List;

import com.hdu.dao.BaseDao;
import com.hdu.dao.CompanyDao;
import com.hdu.entities.Activity;
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
	public void delete(Integer id){
		String hql="delete from Company cp where cp.id=?";
		getSession().createQuery(hql).setInteger(0, id).executeUpdate();
	}
	
	//更新公司
		public void update(Integer id){
			String hql="update Company cp set cp.cpAudit='通过审核'  where cp.id=?";
			getSession().createQuery(hql).setInteger(0, id).executeUpdate();
		}
	 //查询前4条
	@Override
	public List<Company> queryFirstfour() {
		 String hql = "from Company cp order by cp.cpNum asc";
		return getSession()
			.createQuery(hql)
			.setFirstResult(0)
			.setMaxResults(4)
			.list();
	}
 
	@Override
	public Company getById(Integer cpNum) {
		String hql = "from Company cp where cp.cpNum=:cpNum";
		return (Company) getSession().createQuery(hql).setInteger("cpNum", cpNum).list().get(0);
		 
	}
	 
}
