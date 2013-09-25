package com.bestaone.meishi.dao;

import org.apache.ibatis.annotations.Param;

import com.bestaone.meishi.api.orm.mybatis.Mapper;
import com.bestaone.meishi.core.dao.BaseDao;
import com.bestaone.meishi.model.TenantImpl;

@Mapper
public interface TenantImplDao extends BaseDao<TenantImpl,String> {

	TenantImpl quaryByUserId(@Param(value="userId") String userId);

	TenantImpl getByKey(@Param(value="key") String key);
	
}
