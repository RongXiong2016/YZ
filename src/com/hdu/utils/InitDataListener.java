package com.hdu.utils;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.hdu.entities.Activity;
import com.hdu.entities.Company;
import com.hdu.service.ActivityService;
import com.hdu.service.CompanyService;

//监听器是web层的组件，它是tomcat实例化的，不是Spring实例化的。不能放到Spring中 
public class InitDataListener implements ServletContextListener{

	//private ProductTimerTask productTimerTask=null;
	private ApplicationContext context = null; 
	private CompanyService companyService = null; 
	private ActivityService activityService = null;

	@Override
	public void contextDestroyed(ServletContextEvent sce) {

	}

	@Override
	public void contextInitialized(ServletContextEvent event) {

		context = WebApplicationContextUtils.getWebApplicationContext(event.getServletContext()); 
		companyService = (CompanyService) context.getBean("companyService");
		List<List<Company>> cpList = new ArrayList<List<Company>>(); //bigList中存放一个装有Category类的list  
		List<Company> cplst = companyService.getAll();  
		cpList.add(cplst);  
		event.getServletContext().setAttribute("cpList", cpList); 
		
		
		activityService = (ActivityService) context.getBean("activityService");
		List<List<Activity>> actList = new ArrayList<List<Activity>>(); //bigList中存放一个装有Category类的list  
		List<Activity> actlst = activityService.getAll();  
		actList.add(actlst);  
		event.getServletContext().setAttribute("actList", actList); 
	}


}
