package com.bestaone.meishi.model.enums;

/**
 * 角色状态
 * @author zhangguosheng
 */
public enum RoleStatus {

	enable("可用"), disable("不可用");
	
	private String desc;

	private RoleStatus(String desc) {
		this.desc = desc;
	}

	public String getDesc() {
		return desc;
	}
	
}
