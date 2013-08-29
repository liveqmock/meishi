package com.bestaone.meishi.model;

import com.bestaone.meishi.api.entity.IdEntity;
import com.bestaone.meishi.model.enums.RoleStatus;

/**
 * 监控中心用户
 * @author 张国圣
 */
public class Role extends IdEntity<Role> {

	private static final long serialVersionUID = -8819296118180810212L;

	private String name;
	private String remark;
	private RoleStatus status;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public RoleStatus getStatus() {
		return status;
	}
	public void setStatus(RoleStatus status) {
		this.status = status;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}

}
