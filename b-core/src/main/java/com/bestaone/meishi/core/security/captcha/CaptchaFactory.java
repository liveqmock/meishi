package com.bestaone.meishi.core.security.captcha;

import org.springframework.beans.factory.FactoryBean;
import org.springframework.stereotype.Component;

/**
 * 生成图片验证码
 * @author 张国圣
 */
@Component("captcha")
public class CaptchaFactory implements FactoryBean<Captcha> {

	@Override
	public Captcha getObject() throws Exception {
		return new ImageCaptcha();
	}

	@Override
	public Class<?> getObjectType() {
		return Captcha.class;
	}

	@Override
	public boolean isSingleton() {
		return false;
	}

}
