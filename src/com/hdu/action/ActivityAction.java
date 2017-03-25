package com.hdu.action;

import java.io.UnsupportedEncodingException;

import com.hdu.entities.Activity;

public class ActivityAction extends BaseAction<Activity>{
	
	private static final long serialVersionUID = 1L;
	 public  String cmSchool;
	 
	//查询所有活动
	public String getCmSchool() {
		return cmSchool;
	}

	public void setCmSchool(String cmSchool) {
		this.cmSchool = cmSchool;
	}

	public String list(){
		request.put("activities", activityService.getAll());
		
		return "list";
	}

	//根据活动性质查询
	public String getByAcProp() throws UnsupportedEncodingException{
		//String newAcProp = new String(model.getAcProp().getBytes("ISO-8859-1"),"UTF-8");
		request.put("activitiesByAcProp", activityService.getByAcProp(model.getAcProp()));
		System.out.println("-------------------");
		System.out.println("活动性质为"+model.getAcProp());
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
	//根据id获得活动
	public String getById(){
		request.put("activityById", activityService.getByAcNum(model.getAcNum()));
		return "listByAcNum";
	}
	private Integer id;

	public void setId(Integer id) {
		this.id = id;
	}
	public String delete(){
		activityService.delete(id);
		return "delete";
	}

	public String update(){
		activityService.update(id);
		return "update";
	}
	
	public String queryMutlCase(){
		
		request.put("queryMutlCase", activityService.queryByMutlCase(model.getAcProp(), cmSchool, model.getAcBudget()));
		return "queryMutlCase";
		}
}
