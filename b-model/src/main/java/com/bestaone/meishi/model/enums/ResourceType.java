package com.bestaone.meishi.model.enums;

/**
 * 角色状态
 * @author zhangguosheng
 */
public enum ResourceType {

	menu("菜单"), button("按钮");
	
	private String desc;

	private ResourceType(String desc) {
		this.desc = desc;
	}

	public String getDesc() {
		return desc;
	}
	
}
