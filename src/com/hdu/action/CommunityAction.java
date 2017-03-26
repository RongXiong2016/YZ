/**
 * 
 */
package com.hdu.action;

import java.util.Map;

import com.hdu.entities.Community;
import com.hdu.service.CommunityService;

/**
 * @author Administrator
 *
 */
public class CommunityAction extends BaseAction<Community>{
	
	private CommunityService communityService;

	public void setCommunityService(CommunityService communityService) {
		this.communityService = communityService;
	}

	//查询操作
	public String list(){
		request.put("communitys", communityService.getAll());
		return "list";
	}	


	//删除操作
	private Integer id;

	public void setId(Integer id) {
		this.id = id;
	}

	public String cmdelete(){
		communityService.cmdelete(id);
		return "cmdelete";
	}


	//修改
	public String cmupdate(){
		communityService.cmupdate(id);
		return "cmupdate";
	}



}
