package com.hdu.service.impl;

import java.util.List;

import com.hdu.dao.ActivityDao;
import com.hdu.entities.Activity;
import com.hdu.service.ActivityService;

public class ActivityServiceImpl implements ActivityService{
	
	private ActivityDao activityDao;
	
	@Override
	public void setActivityDao(ActivityDao activityDao) {
		this.activityDao = activityDao;
	}

	//根据活动金额筛选活动
	@Override
	public List<Activity> getAll() {
		return activityDao.getAll();
	}
	
	//根据活动性质筛选
	@Override
	public List<Activity> getByAcProp(String acProp){
		return activityDao.getByAcProp(acProp);
	}
	
	//根据学校筛选

	@Override
	public List<Activity> getByCmSchool(String cmSchool){
		return activityDao.getByCmSchool(cmSchool);
	}

	/* (non-Javadoc)
	 * @see com.hdu.service.ActivityService#getByAcMon(java.lang.Integer)
	 */
	@Override
	public List<Activity> getByAcMon(Integer cpBudget) {
		 
		return activityDao.getByAcMon(cpBudget);
	}
 
	@Override
	public Activity getByAcNum(Integer acNum) {
	 
		return activityDao.getByAcNum(acNum);
	}
 
	@Override
	public void delete(Integer acNum) {
		activityDao.delete(acNum);
	}
	 
	@Override
	public void update(Integer acNum) {
		activityDao.update(acNum);
	}
 
	@Override
	public List<Activity> queryByMutlCase(String acProp, String cmSchool, Integer acBudget) {
		return activityDao.queryByMutlCase(acProp, cmSchool, acBudget);
	}
}
