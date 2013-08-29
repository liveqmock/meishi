package com.bestaone.meishi.api.entity;

import java.io.Serializable;

import com.bestaone.meishi.api.orm.mybatis.EntityTypeHandler;
import com.bestaone.meishi.api.util.ReflectionUtils;

/**
 * 实体类基类
 * @author zhangguosheng
 * @param <T>
 */
public abstract class BaseEntity<T extends BaseEntity<T>> extends EntityTypeHandler<T> implements Serializable {

	private static final long serialVersionUID = 9071309727314398599L;
	
	public abstract Serializable getId();
	
	public abstract void setId(Serializable id);

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BaseEntity<?> other = (BaseEntity<?>) obj;
		if (getId() == null) {
			if (other.getId() != null)
				return false;
		} else if (!getId().equals(other.getId()))
			return false;
		return true;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Class<T> getEntityClass() {
		return (Class<T>) ReflectionUtils.getSuperClassGenricType(getClass());
	}
	
}
