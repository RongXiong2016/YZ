/**
 * 
 */
package com.hdu.dao.impl;

import java.util.List;

import com.hdu.dao.BaseDao;
import com.hdu.dao.CommunityDao;
import com.hdu.entities.Community;

/**
 * @author Administrator
 *
 */
public class CommunityDaoImpl extends BaseDao implements CommunityDao{

	 
	@SuppressWarnings("unchecked")
	@Override
	public List<Community> getAll() {
		String hql="from Community";
		return getSession().createQuery(hql).list();
	}


	 
	@SuppressWarnings("unchecked")
	@Override
	public List<Community> getBycmSchool(String cmSchool) {
		String hql = "from Community cm where cm.cmSchool=?";
		return getSession().createQuery(hql).setString(0, cmSchool).list();
	}



	@Override
	public void cmupdate(Integer id) {
		String hql="update Community cm set cm.cmAudit='通过' where cm.cmNum=?";
		getSession().createQuery(hql).setInteger(0, id).executeUpdate();
	}



	@Override
	public void cmdelete(Integer id) {
		String hql="delete from Community cm where cm.cmNum=?";
		getSession().createQuery(hql).setInteger(0, id).executeUpdate();
	}	 
	 
}
