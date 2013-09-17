package com.bestaone.meishi.core.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.AuthenticationException;

/**
 * 动态密码验证
 * @author 张国圣
 */
public class DynamicPasswdAuthentication implements AuthenticationProcessor {

	protected final Logger logger = LoggerFactory.getLogger(getClass());

	@Override
	public void authentication(HttpServletRequest request,HttpServletResponse response) throws AuthenticationException {
		if(SecurityConfig.enableDynamicpass()){
			//TODO动态密码验证
			logger.info("Authenticat DynamicPasswd...");
		}
	}

}
