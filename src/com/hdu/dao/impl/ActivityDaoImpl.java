package com.hdu.dao.impl;

import java.util.List;

import com.hdu.dao.ActivityDao;
import com.hdu.dao.BaseDao;
import com.hdu.dao.impl.ActivityDaoImpl;
import com.hdu.entities.Activity;

public class ActivityDaoImpl extends BaseDao implements ActivityDao {
	 
	 //获得所有活动
	@Override
	@SuppressWarnings("unchecked")
	public List<Activity> getAll() {
		String hql = "from Activity";
		return getSession().createQuery(hql).list();
	}
	//根据活动性质筛选
	@Override
	@SuppressWarnings("unchecked")
	public List<Activity> getByAcProp(String acProp){
		String hql = "from Activity act where act.acProp=?";
		return getSession().createQuery(hql).setString(0, acProp).list();
	}
	//根据赞助金额筛选(筛选公司)
	@Override
	@SuppressWarnings("unchecked")
	public List<Activity> getByAcMon(Integer cpBudget){
		
		String hql = "from Activity act right join fetch act.company cp where cp.cpBudget = :cpBudget";
		return getSession().createQuery(hql).setInteger("cpBudget", cpBudget).list();
	}
	//根据学校筛选
	@Override
	@SuppressWarnings("unchecked")
	public List<Activity> getByCmSchool(String cmSchool){
		String hql = "from Activity act right join fetch act.community com where com.cmSchool=:cmSchool";
		return getSession().createQuery(hql).setString("cmSchool",cmSchool).list();
	}
	
	@Override
	public void acupdate(Integer id) {
		String hql="update Activity ac set ac.acAudit='通过' where ac.acNum=?";
		getSession().createQuery(hql).setInteger(0, id).executeUpdate();
	}
	@Override
	public void acdelete(Integer id) {
		String hql="delete from Activity ac where ac.acNum=?";
		getSession().createQuery(hql).setInteger(0, id).executeUpdate();
	}
	
}
