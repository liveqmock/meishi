package com.bestaone.meishi.front.web.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.util.Assert;

/**
 * 用户注销后的事件处理
 * @author Ricky
 */
public class TeamsSecurityContextLogoutHandler extends SecurityContextLogoutHandler {
	
	private SessionRegistry sessionRegistry;
	
	@Override
	public void logout(HttpServletRequest request, HttpServletResponse response, Authentication authentication) {
        Assert.notNull(request, "HttpServletRequest required");
        if (isInvalidateHttpSession()) {
            HttpSession session = request.getSession(false);
            if (session != null) {
                logger.info("Invalidating session: " + session.getId());
                sessionRegistry.removeSessionInformation(session.getId());
                session.invalidate();
            }
        }

        SecurityContextHolder.clearContext();
    }
	

	public SessionRegistry getSessionRegistry() {
		return sessionRegistry;
	}

	public void setSessionRegistry(SessionRegistry sessionRegistry) {
		this.sessionRegistry = sessionRegistry;
	}

}
