package com.bestaone.meishi.api.user;

import java.util.Collection;

import com.bestaone.meishi.api.entity.IdEntity;

/**
 * 用户接口
 * @author 张国圣
 */
public abstract class SecurityUser<T extends IdEntity<T>> extends IdEntity<T>{

	private static final long serialVersionUID = 774718885501186968L;
	
	public abstract String getUsername();
	public abstract void setUsername(String username);
	public abstract String getPassword();
	public abstract void setPassword(String password);
//	public abstract Date getCreaterTime();
//	public abstract void setCreaterTime(Date createrTime);
//	public abstract Date getLastLoginTime();
//	public abstract void setLastLoginTime(Date lastLoginTime);
//	public abstract String getLastLoginIp();
//	public abstract void setLastLoginIp(String lastLoginIp);
	public abstract UserStatus getStatus();
	public abstract void setStatus(UserStatus status);
	/**
	 * 获取用户权限
	 */
	public Collection<?> getAuthorities(){
		return null;
	}

}
