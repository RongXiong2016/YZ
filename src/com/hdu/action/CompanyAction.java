/**
 * 
 */
package com.hdu.action;

import java.util.Map;

import com.hdu.entities.Company;
import com.hdu.service.CompanyService;

/**
 * @author Administrator
 *
 */
public class CompanyAction extends BaseAction<Company>{
	
	private CompanyService companyService;

	public void setCompanyService(CompanyService companyService) {
		this.companyService = companyService;
	}
	
	//根据预算筛选公司
	public String getBycpBudget(){
		request.put("companyBycpBudget", companyService.getBycpBudget(model.getCpBudget()));
		return "listBycpBudget";
	}

	//查询操作
	public String list(){

		request.put("companys", companyService.getAll());
		return "list";
	}	


	//删除操作
	private Integer id;

	public void setId(Integer id) {
		this.id = id;
	}

	public String cpdelete(){
		companyService.cpdelete(id);
		return "cpdelete";
	}


	//修改
	public String cpupdate(){
		companyService.cpupdate(id);
		return "cpupdate";
	}


}
