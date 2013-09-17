package com.bestaone.meishi.core.authentication.exception;

import org.springframework.security.authentication.AccountStatusException;

/**
 * 账户关闭状态下抛出的异常
 * @author 张国圣
 */
public class UserDisabledException extends AccountStatusException{

	private static final long serialVersionUID = -381265323020058952L;

	public UserDisabledException(String msg) {
        super(msg);
    }

    public UserDisabledException(String msg, Throwable t) {
        super(msg, t);
    }

}
