package com.bestaone.meishi.service;

import com.bestaone.meishi.api.tenant.TenantService;
import com.bestaone.meishi.core.service.IBaseService;
import com.bestaone.meishi.model.TenantImpl;

public interface TenantImplService extends IBaseService<TenantImpl, String>, TenantService{
	
	TenantImpl getByKey(String key);
	
}
