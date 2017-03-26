/**
 * 
 */
package com.hdu.dao;

import java.util.List;

import com.hdu.entities.Activity;

/**
 * @author Administrator
 *
 */
public interface ActivityDao {

	//获得所有活动
	List<Activity> getAll();

	//	根据活动性质筛选
	List<Activity> getByAcProp(String acProp);

	//根据赞助金额筛选
	List<Activity> getByAcMon(Integer cpBudget);

	//根据学校筛选
	List<Activity> getByCmSchool(String cmSchool);

	public void acupdate(Integer id);
	public void acdelete(Integer id);
}