package com.bestaone.meishi.core.security;

import java.util.Collection;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.util.Assert;

import com.bestaone.meishi.api.tenant.Tenant;
import com.bestaone.meishi.api.tenant.TenantService;
import com.bestaone.meishi.api.user.SecurityUser;
import com.bestaone.meishi.api.user.SecurityUserService;
import com.bestaone.meishi.core.authentication.CommonAuthenticationToken;
import com.bestaone.meishi.core.authentication.exception.UserNotFoundException;
import com.bestaone.meishi.core.authentication.exception.WrongPasswordException;

/**
 * 登录验证
 * @author zhangguosheng
 */
public class SimpleAuthenticationProvider implements AuthenticationProvider {

	private final Logger logger = LoggerFactory.getLogger(SimpleAuthenticationProvider.class);
	
	@Autowired
	private SecurityUserService securityUserService;
	
	@Autowired
	private TenantService tenantService;

	/**
	 * 携带数据为 {@link TeamsAuthenticationToken}，包含Tenant信息
	 */
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		Assert.isInstanceOf(CommonAuthenticationToken.class, authentication,"Only TeamsAuthenticationToken is supported");
		String username = null;
		String password = null;
		
		if (authentication.getPrincipal() instanceof User) {
			User user = (User) authentication.getPrincipal();
			username = user.getUsername();
			password = user.getPassword();
        }else {
        	username = authentication.getPrincipal().toString();
        	password = authentication.getCredentials().toString();
        }

		SecurityUser<?> user = null;
		Tenant<?> tenant = null;
		
		try {
			user = securityUserService.quaryByUsernameAndPassword(username,password);
			if(user==null){
				logger.error("User '" + authentication.getName() + "' not found");
				throw new UserNotFoundException("用户不存在");
			}else{
				tenant = tenantService.quaryByUserId(user.getId());
			}
		}catch (Exception repositoryProblem) {
			logger.error(repositoryProblem.getMessage(),repositoryProblem);
			throw new AuthenticationServiceException(repositoryProblem.getMessage(), repositoryProblem);
		}
	
		additionalAuthenticationChecks(user, (CommonAuthenticationToken) authentication);

		return createSuccessAuthentication(authentication,tenant, user);
	}

	@Override
	public boolean supports(Class<?> authentication) {
		return (CommonAuthenticationToken.class.isAssignableFrom(authentication));
	}

	/**
	 * 用户密码验证
	 */
	protected void additionalAuthenticationChecks(SecurityUser<?> user, CommonAuthenticationToken authentication)
			throws AuthenticationException {

		if (authentication.getCredentials() == null) {
			logger.info("Authentication failed: no credentials provided");
			throw new WrongPasswordException("密码错误!");
		}
	}

	/**
	 * 此处返回的Authentication中携带的principal对象为TeamsUser
	 */
	@SuppressWarnings("unchecked")
	protected Authentication createSuccessAuthentication(Authentication authentication, Tenant<?> tenant, SecurityUser<?> user) {
		Object credentials = authentication.getCredentials();
		Collection<GrantedAuthority> authorities = null;
		if(user!=null){
			authorities = (Collection<GrantedAuthority>) user.getAuthorities();
		}
		CommonAuthenticationToken result = new CommonAuthenticationToken(tenant, user, credentials, authorities);
		result.setDetails(authentication.getDetails());
		return result;
	}

}
