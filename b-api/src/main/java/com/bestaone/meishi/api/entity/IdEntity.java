package com.bestaone.meishi.api.entity;

import java.io.Serializable;

import org.springframework.util.Assert;

/**
 * Long主键实体类
 * @author zhangguosheng
 */
public class IdEntity<T extends IdEntity<T>> extends BaseEntity<T>{

	private static final long serialVersionUID = 4275566650516425892L;
	
	protected String id;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public void setId(Serializable id) {
		Assert.notNull(id);
		this.id = id.toString();
	}

}
