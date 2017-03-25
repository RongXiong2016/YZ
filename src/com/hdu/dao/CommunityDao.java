/**
 * 
 */
package com.hdu.dao;

import java.util.List;

import com.hdu.entities.Community;

/**
 * @author Administrator
 *
 */
public interface CommunityDao {
	
	public List<Community> getAll();
	
	public void delete(Integer id);
	
	public void update(Integer id);
	
	public List<Community> getBycmSchool(String cmSchool);
}
