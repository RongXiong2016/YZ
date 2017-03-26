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

	@Override
	public List<Community> getBycmSchool(String cmSchool) {

		return communityDao.getBycmSchool(cmSchool);
	}

	@Override
	public void cmdelete(Integer id) {
		communityDao.cmdelete(id);
	}

	@Override
	public void cmupdate(Integer id) {
		communityDao.cmupdate(id);
	}
}
