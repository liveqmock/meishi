package com.bestaone.meishi.dao;

import com.bestaone.meishi.api.orm.mybatis.Mapper;
import com.bestaone.meishi.core.dao.BaseDao;
import com.bestaone.meishi.model.Role;

@Mapper
public interface RoleDao extends BaseDao<Role,String> {

}
