package com.bestaone.meishi.model;

import java.util.Date;

import com.bestaone.meishi.api.tenant.Tenant;
import com.bestaone.meishi.api.tenant.TenantStatus;

/**
 * 租户
 * @author 张国圣
 */
public class TenantImpl extends Tenant<TenantImpl> {

	private static final long serialVersionUID = 5909659123305541654L;

	private String key;
	private Date createrTime;
	private TenantStatus status;
	
	public Date getCreaterTime() {
		return createrTime;
	}
	public void setCreaterTime(Date createrTime) {
		this.createrTime = createrTime;
	}
	public TenantStatus getStatus() {
		return status;
	}
	public void setStatus(TenantStatus status) {
		this.status = status;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}

}
