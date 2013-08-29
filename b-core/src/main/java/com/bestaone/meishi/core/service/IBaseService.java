package com.bestaone.meishi.core.service;

import java.io.Serializable;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.bestaone.meishi.api.entity.BaseEntity;
import com.bestaone.meishi.core.orm.mybatis.Page;

@Transactional
public interface IBaseService<T extends BaseEntity<T>, PK extends Serializable>{

	@Transactional(readOnly=true)
	public T getById(PK id);
	
	/**
	 * 实体对象无主键时调用 {@link #create(BaseEntity)}方法，有主键时{@link #update(BaseEntity)}方法
	 */
	@Transactional
	public void save(T entity);
	
	@Transactional
	public void delete(PK id);
	
	@Transactional(readOnly=true)
	public List<T> quaryAll();
	
	@Transactional(readOnly=true)
	public List<T> quaryAll(Page<T> page);
	
}
