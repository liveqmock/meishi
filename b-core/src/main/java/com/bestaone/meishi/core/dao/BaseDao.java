package com.bestaone.meishi.core.dao;

import java.io.Serializable;
import java.util.List;

import com.bestaone.meishi.api.entity.BaseEntity;
import com.bestaone.meishi.core.orm.mybatis.Page;

public interface BaseDao<T extends BaseEntity<T>, PK extends Serializable> {

	T getById(PK id);
	
	void insert(T entity);
	
	void update(T entity);

	void delete(PK id);
	
	public List<T> quaryAll();
	
	public List<T> pageAll(Page<T> page);
	
}
