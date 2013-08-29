package com.bestaone.meishi.api.user;

/**
 * 用户状态
 * @author zhangguosheng
 */
public enum UserStatus {

	enable("可用"), disable("不可用");
	
	private String desc;

	private UserStatus(String desc) {
		this.desc = desc;
	}

	public String getDesc() {
		return desc;
	}
	
}
