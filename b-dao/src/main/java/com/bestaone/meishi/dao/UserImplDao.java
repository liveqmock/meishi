package com.bestaone.meishi.dao;

import org.apache.ibatis.annotations.Param;

import com.bestaone.meishi.api.orm.mybatis.Mapper;
import com.bestaone.meishi.core.dao.BaseDao;
import com.bestaone.meishi.model.UserImpl;

@Mapper
public interface UserImplDao extends BaseDao<UserImpl,String> {

	UserImpl quaryByUsernameAndPassword(@Param(value="username") String username, @Param(value="password") String password);

	UserImpl getByUsername(@Param(value="username") String username);

}
