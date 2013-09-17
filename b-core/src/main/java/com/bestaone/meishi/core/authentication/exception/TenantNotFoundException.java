package com.bestaone.meishi.core.authentication.exception;

import org.springframework.security.core.AuthenticationException;

public class TenantNotFoundException extends AuthenticationException{

	private static final long serialVersionUID = 1L;

	public TenantNotFoundException(String msg) {
		super(msg);
	}

}
