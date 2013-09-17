package com.bestaone.meishi.core.authentication;

import java.util.Collection;

import org.springframework.security.authentication.AbstractAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;

public class TeamsAuthenticationToken extends AbstractAuthenticationToken {
	
	private static final long serialVersionUID = -2469458559362807924L;

	//登录成功之前保存用户帐号名，登录成功后保存  TeamsUser对象
	private final Object principal;
	private final Object credentials;
	//登录成功之前保存租户公司代码，登录成功后保存  TenantInfo对象
	private final Object tenant;
	
	
	/**
	 * @param tenant 租户信息
	 * @param principal 用户信息
	 * @param credentials 密码信息
	 */
	public TeamsAuthenticationToken(Object tenant, Object principal, Object credentials) {
		super(null);
		this.principal = principal;
		this.credentials = credentials;
		this.tenant = tenant;
		setAuthenticated(false);
	}

	public TeamsAuthenticationToken(Object tenant, Object principal, Object credentials, Collection<? extends GrantedAuthority> collection) {
		super(collection);
		this.tenant = tenant;
		this.principal = principal;
		this.credentials = credentials;
		super.setAuthenticated(true);
	}

	@Override
	public Object getCredentials() {
		return this.credentials;
	}

	@Override
	public Object getPrincipal() {
		return this.principal;
	}

	public Object getTenant() {
		return tenant;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((principal == null) ? 0 : principal.hashCode());
		result = prime * result + ((tenant == null) ? 0 : tenant.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		TeamsAuthenticationToken other = (TeamsAuthenticationToken) obj;
		if (principal == null) {
			if (other.principal != null)
				return false;
		} else if (!principal.equals(other.principal))
			return false;
		if (tenant == null) {
			if (other.tenant != null)
				return false;
		} else if (!tenant.equals(other.tenant))
			return false;
		return true;
	}

}
