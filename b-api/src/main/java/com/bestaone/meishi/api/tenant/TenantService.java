package com.bestaone.meishi.api.tenant;


public interface TenantService {

	Tenant<?> quaryByUserId(String id);
	
	Tenant<?> getByKey(String key);
	
}
