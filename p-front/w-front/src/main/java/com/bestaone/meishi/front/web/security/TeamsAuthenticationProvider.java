package com.bestaone.meishi.front.web.security;

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

import com.bestaone.meishi.api.user.SecurityUser;
import com.bestaone.meishi.core.authentication.TeamsAuthenticationToken;
import com.bestaone.meishi.core.authentication.exception.TenantNotFoundException;
import com.bestaone.meishi.core.authentication.exception.UserNotFoundException;
import com.bestaone.meishi.core.authentication.exception.WrongPasswordException;
import com.bestaone.meishi.model.UserImpl;
import com.bestaone.meishi.service.UserImplService;

/**
 * 登录验证
 * @author zhangguosheng
 */
public class TeamsAuthenticationProvider implements AuthenticationProvider {

	private final Logger logger = LoggerFactory.getLogger(TeamsAuthenticationProvider.class);
	
	@Autowired
	private UserImplService userImplService;

	/**
	 * 携带数据为 {@link TeamsAuthenticationToken}，包含Tenant信息
	 */
	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		Assert.isInstanceOf(TeamsAuthenticationToken.class, authentication,"Only TeamsAuthenticationToken is supported");
		String username = null;
		
		if (authentication.getPrincipal() instanceof User) {
			username = ((User) authentication.getPrincipal()).getUsername();
        }
        else {
        	username = authentication.getPrincipal().toString();
        }

		SecurityUser<UserImpl> user = null;
		Object tenant = new Object();
		
		try {
			user = userImplService.quaryByUsername(username);
			if(user==null){
				throw new UserNotFoundException("用户不存在");
			}
		} catch (TenantNotFoundException tenantNotFound) {
			logger.error("Tenant '" + ((TeamsAuthenticationToken) authentication).getTenant() + "' not found",tenantNotFound);
			throw tenantNotFound;
		}catch (UserNotFoundException userNotFound) {
			logger.error("User '" + authentication.getName() + "' not found",userNotFound);
			throw userNotFound;
		} catch (Exception repositoryProblem) {
			logger.error(repositoryProblem.getMessage(),repositoryProblem);
			throw new AuthenticationServiceException(repositoryProblem.getMessage(), repositoryProblem);
		}
	
		additionalAuthenticationChecks(user, (TeamsAuthenticationToken) authentication);

		return createSuccessAuthentication(authentication,tenant, user);
	}

	@Override
	public boolean supports(Class<?> authentication) {
		return (TeamsAuthenticationToken.class.isAssignableFrom(authentication));
	}

	/**
	 * 用户密码验证
	 */
	protected void additionalAuthenticationChecks(SecurityUser<UserImpl> user, TeamsAuthenticationToken authentication)
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
	protected Authentication createSuccessAuthentication(Authentication authentication, Object tenant, SecurityUser<UserImpl> user) {
		Object credentials = authentication.getCredentials();
		Collection<GrantedAuthority> authorities = null;
		if(user!=null){
			authorities = (Collection<GrantedAuthority>) user.getAuthorities();
		}
		TeamsAuthenticationToken result = new TeamsAuthenticationToken(tenant, user, credentials, authorities);
		result.setDetails(authentication.getDetails());
		return result;
	}

}
