package com.bestaone.meishi.core.authentication.exception;

import org.springframework.security.core.AuthenticationException;

public class UsbKeyAuthenticationException extends AuthenticationException {

	private static final long serialVersionUID = -2101014363770303194L;

	public UsbKeyAuthenticationException(String msg) {
		super(msg);
	}

}
