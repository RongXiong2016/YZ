/**
 * 
 */
package com.hdu.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.TimerTask;

import javax.servlet.ServletContext;

import org.springframework.stereotype.Component;

import com.hdu.entities.Company;
import com.hdu.service.ActivityService;
import com.hdu.service.CompanyService;

/**
 * @author Administrator
 *
 */
@Component
public class ProductTimerTask extends TimerTask{

	private CompanyService companyService = null;

	public void setCompanyService(CompanyService companyService) {
		this.companyService = companyService;
	}

	private ActivityService activityService = null;

	public void setActivityService(ActivityService activityService) {
		this.activityService = activityService;
	}

	//定义一个ServletContext对象，因为我们更新了后台数据后，需要存入application域里面  
	private ServletContext application = null; 

	public void setApplication(ServletContext application) {  
		this.application = application; //通过监听器将这个application对象set进来，因为这里是无法拿application对象的  
	}
	
	@Override
	public void run() {
		System.out.println("----run----");
		List<List<Company>> cpList = new ArrayList<List<Company>>(); //bigList中存放一个装有Category类的list
		
		List<Company> cplst = companyService.getAll();
		cpList.add(cplst);
		 
		// 2. 把查询的bigList交给application内置对象
		System.out.println("11111111");
		application.setAttribute("cpList", cpList);
	}

	}


