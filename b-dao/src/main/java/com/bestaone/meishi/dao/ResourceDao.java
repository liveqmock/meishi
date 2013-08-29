package com.bestaone.meishi.dao;

import com.bestaone.meishi.api.orm.mybatis.Mapper;
import com.bestaone.meishi.core.dao.BaseDao;
import com.bestaone.meishi.model.Resource;

@Mapper
public interface ResourceDao extends BaseDao<Resource,String> {

}
