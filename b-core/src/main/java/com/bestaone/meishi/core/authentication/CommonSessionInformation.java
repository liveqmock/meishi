package com.bestaone.meishi.core.authentication;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.session.SessionInformation;

public class CommonSessionInformation extends SessionInformation{
	
	private static final long serialVersionUID = 3997536940340285750L;
	
	private final HttpSession session;
	
	public CommonSessionInformation(Object principal, HttpSession session, Date lastRequest) {
		super(principal, session.getId(), lastRequest);
		this.session = session;
	}

	public HttpSession getSession() {
		return session;
	}

}
