package com.bestaone.meishi.core.authentication;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.session.SessionInformation;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.web.authentication.session.SessionAuthenticationException;
import org.springframework.security.web.authentication.session.SessionFixationProtectionStrategy;

/**
 * 同时登录时的Session控制
 * @author Ricky
 */
public class CommonConcurrentSessionControlStrategy extends SessionFixationProtectionStrategy {
	
	/**
	 * 每个用户允许的最大Session数
	 */
	private static final int MAXIMUM_SESSIONS =2;
	
	private CommonSessionRegistry sessionRegistry;

	public CommonConcurrentSessionControlStrategy(CommonSessionRegistry sessionRegistry) {
		super.setAlwaysCreateSession(true);
		this.sessionRegistry = sessionRegistry;
	}
	
	@Override
    public void onAuthentication(Authentication authentication, HttpServletRequest request,HttpServletResponse response) {
		CommonAuthenticationToken teamsAuthentication = (CommonAuthenticationToken)authentication;
        checkAuthenticationAllowed(teamsAuthentication, request);
        super.onAuthentication(authentication, request, response);
        sessionRegistry.registerNewSession(request.getSession(), teamsAuthentication);
    }
	
	protected void allowableSessionsExceeded(List<SessionInformation> sessions, int allowableSessions,
            SessionRegistry registry) throws SessionAuthenticationException {
		
        if (sessions == null) {
            throw new SessionAuthenticationException("ConcurrentSessionControlStrategy.exceededAllowed,Maximum sessions for this principal exceeded");
        }

        // Determine least recently used session, and mark it for invalidation
        SessionInformation leastRecentlyUsed = null;

        for (SessionInformation session : sessions) {
            if ((leastRecentlyUsed == null) || session.getLastRequest().before(leastRecentlyUsed.getLastRequest())) {
                leastRecentlyUsed = session;
            }
        }

        leastRecentlyUsed.expireNow();
    }

    private void checkAuthenticationAllowed(CommonAuthenticationToken authentication, HttpServletRequest request)throws AuthenticationException {
        final List<SessionInformation> sessions = sessionRegistry.getAllSessions(authentication, false);
        int sessionCount = sessions.size();
        int allowedSessions = MAXIMUM_SESSIONS;

        // They haven't got too many login sessions running at present
        if (sessionCount < allowedSessions) {
            return;
        }

        // We permit unlimited logins
        if (allowedSessions == -1) {
            return;
        }

        if (sessionCount == allowedSessions) {
            HttpSession session = request.getSession(false);

            if (session != null) {
                // Only permit it though if this request is associated with one of the already registered sessions
                for (SessionInformation si : sessions) {
                    if (si.getSessionId().equals(session.getId())) {
                        return;
                    }
                }
            }
            // If the session is null, a new one will be created by the parent class, exceeding the allowed number
        }

        allowableSessionsExceeded(sessions, allowedSessions, sessionRegistry);
    }
    
    @Override
    protected void onSessionChange(String originalSessionId, HttpSession newSession, Authentication auth) {
        // Update the session registry
    	CommonAuthenticationToken teamsAuthentication = (CommonAuthenticationToken)auth;
        sessionRegistry.removeSessionInformation(originalSessionId);
        sessionRegistry.registerNewSession(newSession, teamsAuthentication);
    }
    
    @Override
    public final void setAlwaysCreateSession(boolean alwaysCreateSession) {
        if (!alwaysCreateSession) {
            throw new IllegalArgumentException("Cannot set alwaysCreateSession to false when concurrent session " +
                    "control is required");
        }
    }

}
