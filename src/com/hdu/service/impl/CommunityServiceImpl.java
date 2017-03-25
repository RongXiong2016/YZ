/**
 * 
 */
package com.hdu.service.impl;

import java.util.List;

import com.hdu.dao.CommunityDao;
import com.hdu.entities.Community;
import com.hdu.service.CommunityService;

/**
 * @author Administrator
 *
 */
public class CommunityServiceImpl implements CommunityService {
	private CommunityDao communityDao;

	public void setCommunityDao(CommunityDao communityDao) {
		this.communityDao = communityDao;
	}

	public List<Community> getAll(){
		return communityDao.getAll();
	}

	public void delete(Integer id){
		communityDao.delete(id);
	}

	public void update(Integer id){
		communityDao.update(id);
	}

	@Override
	public List<Community> getBycmSchool(String cmSchool) {
		return communityDao.getBycmSchool(cmSchool);
	}
}
