package com.bestaone.meishi.core.security.captcha;

import java.io.Serializable;

/**
 * 登录页面验证码
 * @author 张国圣
 */
public interface Captcha extends Serializable {

	String getQuestion();

	Object getChallenge();

	/**
	 * 验证Captcha是否正确
	 * @param onject
	 */
	Boolean validateResponse(Object onject);

	void disposeChallenge();

	Boolean hasGetChalengeBeenCalled();

}
