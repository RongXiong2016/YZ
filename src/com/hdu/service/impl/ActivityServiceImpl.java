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
	public void acdelete(Integer acNum) {
		activityDao.acdelete(acNum);
	}

	@Override
	public void acupdate(Integer acNum) {
		activityDao.acupdate(acNum);
	}
}
