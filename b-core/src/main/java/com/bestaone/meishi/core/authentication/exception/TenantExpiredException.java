package com.bestaone.meishi.core.authentication.exception;

import org.springframework.security.core.AuthenticationException;

/**
 * 租户未续费时抛出的异常
 * @author 张国圣
 */
public class TenantExpiredException extends AuthenticationException{

	private static final long serialVersionUID = 1L;

	public TenantExpiredException(String msg) {
		super(msg);
	}

}
