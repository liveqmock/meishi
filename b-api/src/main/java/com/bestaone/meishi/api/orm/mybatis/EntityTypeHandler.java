package com.bestaone.meishi.api.orm.mybatis;

import java.io.Serializable;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.bestaone.meishi.api.entity.BaseEntity;

public abstract class EntityTypeHandler<T extends BaseEntity<T>> extends BaseTypeHandler<T> {

	protected Logger logger = LoggerFactory.getLogger(getClass());
	
	@Override
	public void setNonNullParameter(PreparedStatement ps, int i, T parameter, JdbcType jdbcType)
			throws SQLException {
		ps.setObject(i, parameter.getId());
	}

	@Override
	public T getNullableResult(ResultSet rs, String columnName) throws SQLException {
		Serializable id = (Serializable) rs.getObject(columnName);
		return getEntityInstance(id,getEntityClass());
	}

	@Override
	public T getNullableResult(ResultSet rs, int columnIndex) throws SQLException {
		Serializable id = (Serializable) rs.getObject(columnIndex);
		return getEntityInstance(id,getEntityClass());
	}

	@Override
	public T getNullableResult(CallableStatement cs, int columnIndex) throws SQLException {
		Serializable id = (Serializable) cs.getObject(columnIndex);
		return getEntityInstance(id,getEntityClass());
	}
	
	protected T getEntityInstance(Serializable id, Class<T> type){
		try {
			T entity = type.newInstance();
			entity.setId(id);
			return entity;
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
		}
		return null;
	}

	/**
	 * 获取泛型类型(为实体类)
	 * @return
	 */
	public abstract Class<T> getEntityClass();
	
}
