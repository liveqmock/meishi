package com.bestaone.meishi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bestaone.meishi.core.dao.BaseDao;
import com.bestaone.meishi.core.service.BaseEntityService;
import com.bestaone.meishi.dao.RoleDao;
import com.bestaone.meishi.model.Role;

@Service("roleService")
public class RoleServiceImpl extends BaseEntityService<Role, String> implements RoleService{
	
	@Autowired
	RoleDao roleDao;
	
	@Override
	public BaseDao<Role, String> getDao() {
		return roleDao;
	}

}
