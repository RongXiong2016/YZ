package com.hdu.action;

import java.lang.reflect.ParameterizedType;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.hdu.service.ActivityService;
import com.hdu.service.CommunityService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class BaseAction<T> extends ActionSupport implements RequestAware,ModelDriven<T>,SessionAware{

	protected T model;
	
	@Override 
	public T getModel() {
		ParameterizedType type = (ParameterizedType) this.getClass().getGenericSuperclass();
		Class clazz = (Class) type.getActualTypeArguments()[0];
		try {
			model = (T) clazz.newInstance();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		return model;
	}
 
	protected Map<String, Object> request;
	protected Map<String, Object> session;
	@Override
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	protected ActivityService activityService;
	public void setActivityService(ActivityService activityService) {
		this.activityService = activityService;
	}
	protected CommunityService communityService;

	public void setCommunityService(CommunityService communityService) {
		this.communityService = communityService;
	}
}
