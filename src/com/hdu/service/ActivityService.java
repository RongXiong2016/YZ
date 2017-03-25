/**
 * 
 */
package com.hdu.service;

import java.util.List;

import com.hdu.dao.ActivityDao;
import com.hdu.entities.Activity;

/**
 * @author Administrator
 *
 */
public interface ActivityService {

	void setActivityDao(ActivityDao activityDao);

	//根据活动金额筛选活动
	List<Activity> getByAcMon(Integer money);
	//查询所有活动
	List<Activity> getAll();

	//根据活动性质筛选
	List<Activity> getByAcProp(String acProp);

	//根据学校筛选
	List<Activity> getByCmSchool(String cmSchool);

 
	Object getByAcNum(Integer acNum);
	public void delete(Integer id);
	
	public void update(Integer id);
	public List<Activity> queryByMutlCase(String acProp,String cmSchool,Integer acBudget);
}