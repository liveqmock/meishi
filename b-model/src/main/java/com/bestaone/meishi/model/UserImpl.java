package com.bestaone.meishi.model;

import java.util.Date;

import com.bestaone.meishi.api.user.User;
import com.bestaone.meishi.api.user.UserStatus;

/**
 * 用户
 * @author 张国圣
 */
public class UserImpl extends User<UserImpl> {

	private static final long serialVersionUID = -8819296118180810212L;

	private String username;
	private String password;
	private Date createrTime;
	private Date lastLoginTime;
	private String lastLoginIp;
	private UserStatus status;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getCreaterTime() {
		return createrTime;
	}
	public void setCreaterTime(Date createrTime) {
		this.createrTime = createrTime;
	}
	public Date getLastLoginTime() {
		return lastLoginTime;
	}
	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}
	public String getLastLoginIp() {
		return lastLoginIp;
	}
	public void setLastLoginIp(String lastLoginIp) {
		this.lastLoginIp = lastLoginIp;
	}
	public UserStatus getStatus() {
		return status;
	}
	public void setStatus(UserStatus status) {
		this.status = status;
	}

}
