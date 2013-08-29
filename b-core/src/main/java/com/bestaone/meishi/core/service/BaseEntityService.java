package com.bestaone.meishi.core.service;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;

import com.bestaone.meishi.api.entity.BaseEntity;
import com.bestaone.meishi.core.dao.BaseDao;
import com.bestaone.meishi.core.orm.mybatis.Page;
import com.bestaone.meishi.core.util.IdGenerator;


public abstract class BaseEntityService<T extends BaseEntity<T>, PK extends Serializable> implements IBaseService<T, PK>{
	
	@Autowired
	protected IdGenerator<String> idGenerator;
	
	/**
	 * @return EntityDao
	 */
	public abstract BaseDao<T,PK> getDao();
	
	@Override
	public T getById(PK id) {
		Assert.notNull(id);
		return getDao().getById(id);
	}

	@Override
	public void save(T entity) {
		Assert.notNull(entity);
		if(entity.getId()!=null){
			this.update(entity);
		}else{
			this.create(entity);
		}
	}
	
	private void create(T entity) {
		Assert.notNull(entity);
		//创建对象前，生成主键
		entity.setId(idGenerator.generate());
		getDao().insert(entity);
	}
	
	private void update(T entity) {
		Assert.notNull(entity);
		getDao().update(entity);
	}

	@Override
	public void delete(PK id) {
		Assert.notNull(id);
		getDao().delete(id);
	}
	
	@Override
	public List<T> quaryAll() {
		return getDao().quaryAll();
	}

	@Override
	public List<T> quaryAll(Page<T> page) {
		Assert.notNull(page);
		return getDao().pageAll(page);
	}

}
