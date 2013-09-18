package com.bestaone.meishi.api.tenant;

/**
 * 租户状态
 * @author zhangguosheng
 */
public enum TenantStatus {

	enable("可用"), disable("不可用");
	
	private String desc;

	private TenantStatus(String desc) {
		this.desc = desc;
	}

	public String getDesc() {
		return desc;
	}
	
}
