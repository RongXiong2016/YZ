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
		String hql = "from Activity act where act.acProp=:acProp";
		return getSession().createQuery(hql).setString("acProp", acProp).list();
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
	public Activity getByAcNum(Integer acNum) {
		String hql = "from Activity act where act.acNum =:acNum";
		return  (Activity) getSession().createQuery(hql).setInteger("acNum", acNum).list().get(0);
	}
//	活动审核
	@Override
	public void update(Integer id) {
		String hql="update Activity ac set ac.acAudit='通过' where ac.acNum=?";
		getSession().createQuery(hql).setInteger(0, id).executeUpdate();
	}
	@Override
	public void delete(Integer id) {
		String hql="delete from Activity ac where ac.acNum=?";
		getSession().createQuery(hql).setInteger(0, id).executeUpdate();
	}
	public List<Activity> queryByMutlCase(String acProp,String cmSchool,Integer acBudget){
		//String hql = "from Activity act,Com"
		String hql="from Activity act";
		 
		if(cmSchool!=null){
			hql+=" right join fetch act.community com where com.cmSchool=:cmSchool";
			if(acProp!=null){
				hql+=" and act.acProp=:acProp";
				if(acBudget!=null){
					hql+=" and act.acBudget=:acBudget";
				return getSession().createQuery(hql).setString(":cmSchool", cmSchool).setString("acProp", acProp).setInteger("acBudget", acBudget).list();
				}
				//1,2不为空，3为空
				return getSession().createQuery(hql).setString(":cmSchool", cmSchool).setString("acProp", acProp).list();
				}else{
				if(acBudget!=null){
					hql+=" and acBudget=:acBudget";
					return getSession().createQuery(hql).setString(":cmSchool", cmSchool).setInteger("acBudget", acBudget).list();
					}
				return getSession().createQuery(hql).setString(":cmSchool", cmSchool).list();
			}
		
		}else{//学校为空
			if(acProp!=null){
				hql+=" where acProp=:acProp";
				if(acBudget!=null){
					hql+=" and acBudget=:acBudget";
				return getSession().createQuery(hql).setString("acProp", acProp).setInteger("acBudget", acBudget).list();
				}
				return getSession().createQuery(hql).setString("acProp", acProp).list();
				
				}else{
				if(acBudget!=null){
					hql+=" where acBudget=:acBudget";
				 return getSession().createQuery(hql).setInteger("acBudget", acBudget).list();
				}
				return getSession().createQuery("from Activity act").list();
			}
		}
		 
	}
}

