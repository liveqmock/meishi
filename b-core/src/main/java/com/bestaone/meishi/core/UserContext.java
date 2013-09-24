package com.bestaone.meishi.core;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;

import com.bestaone.meishi.api.tenant.Tenant;
import com.bestaone.meishi.api.user.SecurityUser;
import com.bestaone.meishi.core.authentication.CommonAuthenticationToken;

public class UserContext {

	/**
	 * 获取当前用户
	 */
	public static SecurityUser<?> getCurrentUser() {
		SecurityContext securityContext = SecurityContextHolder.getContext();
		Authentication authentication = securityContext.getAuthentication();
		if (authentication == null) {
			return null;
        }
		Object principal = authentication.getPrincipal();
		if (principal == null) {
			return null;
		}
		if (SecurityUser.class.isInstance(principal)) {
			SecurityUser<?> user = (SecurityUser<?>) principal;
			return user;
		}
		
		return null;
	}
	
	/**
	 * 设置用户认证
	 * @param tenant
	 * @param user
	 */
	public static void initAuthentication(Tenant<?> tenant, SecurityUser<?> user) {
		SecurityContext securityContext = SecurityContextHolder.getContext();
		CommonAuthenticationToken authentication = new CommonAuthenticationToken(tenant, user, null, null);
		securityContext.setAuthentication(authentication);
	}
	
	/**
	 * 获取当前租户信息
	 */
	public static Tenant<?> getCurrentTenant() {
		SecurityContext securityContext = SecurityContextHolder.getContext();
		Authentication authentication = securityContext.getAuthentication();
		if(authentication!=null){
			if(authentication instanceof CommonAuthenticationToken){
				CommonAuthenticationToken authenticationToken = (CommonAuthenticationToken) authentication; 
				Object tenant = authenticationToken.getTenant();
				if (tenant == null) {
					return null;
				}
				if (Tenant.class.isInstance(tenant)) {
					return (Tenant<?>) tenant;
				}
			}
		}
		return null;
	}
	
	public static void setTemporaryContext(Tenant<?> tenant){
		if(tenant==null)	return;
//		CommonAuthenticationToken token = new CommonAuthenticationToken(tenant, tenant.getTenantKey(), null,null);
//		SecurityContextHolder.getContext().setAuthentication(token);
	}

	public static void clearTemporaryContext(){
		SecurityContextHolder.clearContext();
	}
	
}
