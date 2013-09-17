package com.bestaone.meishi.core.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.AuthenticationException;

/**
 * USBKey验证
 */
public class UsbKeyAuthentication implements AuthenticationProcessor {

	protected final Logger logger = LoggerFactory.getLogger(getClass());

	@Override
	public void authentication(HttpServletRequest request,HttpServletResponse response) throws AuthenticationException {
		if(SecurityConfig.enableUSB()){
			//TODO USBKey令牌验证
			logger.info("Authenticat UsbKey...");
		}
	}

}
