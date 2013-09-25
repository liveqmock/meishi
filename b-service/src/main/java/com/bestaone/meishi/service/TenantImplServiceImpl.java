package com.bestaone.meishi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bestaone.meishi.api.tenant.Tenant;
import com.bestaone.meishi.core.dao.BaseDao;
import com.bestaone.meishi.core.service.BaseEntityService;
import com.bestaone.meishi.dao.TenantImplDao;
import com.bestaone.meishi.model.TenantImpl;

@Service("tenantImplService")
public class TenantImplServiceImpl extends BaseEntityService<TenantImpl, String> implements TenantImplService{
	
	@Autowired
	TenantImplDao tenantImplDao;
	
	@Override
	public BaseDao<TenantImpl, String> getDao() {
		return tenantImplDao;
	}

	@Override
	public Tenant<?> quaryByUserId(String userId) {
		return tenantImplDao.quaryByUserId(userId);
	}

	@Override
	public TenantImpl getByKey(String key) {
		return tenantImplDao.getByKey(key);
	}

}
