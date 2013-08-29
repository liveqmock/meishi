package com.bestaone.meishi.core;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;

public class UserContext {

	/**
	 * 获取当前用户
	 */
	public static User getCurrentUser() {
		SecurityContext securityContext = SecurityContextHolder.getContext();
		Authentication authentication = securityContext.getAuthentication();
		if (authentication == null) {
			return null;
        }
		Object principal = authentication.getPrincipal();
		if (principal == null) {
			return null;
		}
		if (User.class.isInstance(principal)) {
			User user = (User) principal;
			return user;
		}
		return null;
	}
	
}
