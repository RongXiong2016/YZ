/**
 * 
 */
package com.hdu.service;

import java.util.List;

import com.hdu.dao.CommunityDao;
import com.hdu.entities.Community;

/**
 * @author Administrator
 *
 */
public interface CommunityService {
	
	public List<Community> getBycmSchool(String cmSchool);
	public void setCommunityDao(CommunityDao communityDao);
	
	public List<Community> getAll();
	
	
	public void delete(Integer id);
	
	
	
	public void update(Integer id);
}
