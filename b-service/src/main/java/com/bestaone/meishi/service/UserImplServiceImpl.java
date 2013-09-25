package com.bestaone.meishi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bestaone.meishi.core.dao.BaseDao;
import com.bestaone.meishi.core.service.BaseEntityService;
import com.bestaone.meishi.dao.UserImplDao;
import com.bestaone.meishi.model.UserImpl;

@Service("userImplService")
public class UserImplServiceImpl extends BaseEntityService<UserImpl, String> implements UserImplService{
	
	@Autowired
	UserImplDao userImplDao;
	
	@Override
	public BaseDao<UserImpl, String> getDao() {
		return userImplDao;
	}

	@Override
	public UserImpl quaryByUsernameAndPassword(String username, String password) {
		return userImplDao.quaryByUsernameAndPassword(username, password);
	}

	@Override
	public UserImpl getByUsername(String username) {
		return userImplDao.getByUsername(username);
	}

}
