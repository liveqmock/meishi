package com.bestaone.meishi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bestaone.meishi.core.dao.BaseDao;
import com.bestaone.meishi.core.service.BaseEntityService;
import com.bestaone.meishi.dao.ResourceDao;
import com.bestaone.meishi.model.Resource;

@Service("resourceService")
public class ResourceServiceImpl extends BaseEntityService<Resource, String> implements ResourceService{
	
	@Autowired
	ResourceDao resourceDao;
	
	@Override
	public BaseDao<Resource, String> getDao() {
		return resourceDao;
	}

}
