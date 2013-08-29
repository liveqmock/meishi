package com.bestaone.meishi.model.enums;

/**
 * 资源编码
 * @author zhangguosheng
 */
public enum ResourceCode {

	SYSTEM_MANAGER("系统管理"), 
	
	SYSTEM_SETTING("系统设置");
	
	private String desc;

	private ResourceCode(String desc) {
		this.desc = desc;
	}

	public String getDesc() {
		return desc;
	}
	
}
