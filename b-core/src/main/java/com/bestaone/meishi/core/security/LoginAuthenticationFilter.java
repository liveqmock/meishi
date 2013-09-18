package com.bestaone.meishi.core.security;

import java.io.IOException;
import java.util.List;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.event.InteractiveAuthenticationSuccessEvent;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter;

import com.bestaone.meishi.core.authentication.CommonAuthenticationToken;

/**
 * 登录过滤器
 * @author 张国圣
 */
public class LoginAuthenticationFilter extends AbstractAuthenticationProcessingFilter {

	private List<AuthenticationProcessor> authenticationProcessors;
	
	/**
	 * 定义登录页面参数名称
	 */
	private static final String USERNAME_PARAM = "username";
	private static final String PASSWORD_PARAM = "password";
	private static final String TENANT_PARAM = "tenantid";
	
	private static final String LOGIN_URL = "/j_spring_security_check";
	
	private boolean postOnly = true;
	
	protected LoginAuthenticationFilter() {
		super(LOGIN_URL);
	}

	@Override
	public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response) throws AuthenticationException {

		if (postOnly && !request.getMethod().equals("POST")) {
            throw new AuthenticationServiceException("Authentication method not supported: " + request.getMethod());
        }
		
		try{
			for (AuthenticationProcessor processor : authenticationProcessors) {
				processor.authentication(request, response);
			}
		}catch (AuthenticationException failed) {
			try {
				unsuccessfulAuthentication(request, response, failed);
				return null;
			} catch (Exception e) {} 
		}
		String username = obtainUsername(request);
		String tenantid = obtainTenantid(request);
		String password = obtainPassword(request);
		
		CommonAuthenticationToken authRequest = new CommonAuthenticationToken(tenantid,username,password);
		setDetails(request, authRequest);
		return getAuthenticationManager().authenticate(authRequest);
	}

	/**
	 * 用户名转换为小写字母
	 */
	protected String obtainUsername(HttpServletRequest request) {
		String userName = request.getParameter(USERNAME_PARAM);
		return (userName == null ? "" : userName).trim();
	}
	
	/**
	 * 租户ID
	 */
	protected String obtainTenantid(HttpServletRequest request) {
		String userName = request.getParameter(TENANT_PARAM);
		return (userName == null ? "" : userName).trim();
	}
	/**
	 * 密码
	 */
	protected String obtainPassword(HttpServletRequest request) {
		String password = request.getParameter(PASSWORD_PARAM);
		return password == null ? "" : password;
	}
	
	protected void setDetails(HttpServletRequest request, CommonAuthenticationToken authRequest) {
        authRequest.setDetails(authenticationDetailsSource.buildDetails(request));
    }
	
	@Override
	protected void successfulAuthentication(HttpServletRequest request, HttpServletResponse response, FilterChain chain,
            Authentication authResult) throws IOException, ServletException{
		
	
		//更新 SecurityContextHolder
        SecurityContextHolder.getContext().setAuthentication(authResult);
        
        getRememberMeServices().loginSuccess(request, response, authResult);

        // Fire event
        if (this.eventPublisher != null) {
            eventPublisher.publishEvent(new InteractiveAuthenticationSuccessEvent(authResult, this.getClass()));
        }

        getSuccessHandler().onAuthenticationSuccess(request, response, authResult);
        
    }

	public List<AuthenticationProcessor> getAuthenticationProcessors() {
		return authenticationProcessors;
	}

	public void setAuthenticationProcessors(List<AuthenticationProcessor> authenticationProcessors) {
		this.authenticationProcessors = authenticationProcessors;
	}

	public boolean isPostOnly() {
		return postOnly;
	}

	public void setPostOnly(boolean postOnly) {
		this.postOnly = postOnly;
	}
}
