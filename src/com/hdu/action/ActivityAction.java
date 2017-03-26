package com.hdu.action;


import com.hdu.entities.Activity;
import com.hdu.service.ActivityService;

public class ActivityAction extends BaseAction<Activity>{
	 
	private static final long serialVersionUID = 1L;
	
	private ActivityService activityService;
	public void setActivityService(ActivityService activityService) {
		this.activityService = activityService;
	}
 

	//查询所有活动
	public String list(){
		request.put("activities", activityService.getAll());
		return "list";
	}
	
	//根据活动性质查询
	public String getByAcProp(){
		request.put("activitiesByAcProp", activityService.getByAcProp(model.getAcProp()));
		return "listByAcProp";
	}
	

	//根据学校筛选
	public String getByCmSchool(){
		request.put("activitiesByCmSchool",activityService.getByCmSchool("杭州电子科技大学")); 
		return "listByCmSchool";
	}
	
	//根据赞助金额筛选活动
	public String getByAcMon(){
		request.put("activitiesByAcMon", activityService.getByAcMon(1000));
		return "listByAcMon";
	}

	private Integer id;
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String acdelete(){
		activityService.acdelete(id);
		return "acdelete";
	}
	
	public String acupdate(){
		activityService.acupdate(id);
		return "acupdate";
	}
}
