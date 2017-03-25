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

	public String delete(){
		communityService.delete(id);
		return "delete";
	}


	//修改
	public String update(){
		communityService.update(id);
		return "update";
	}



}
