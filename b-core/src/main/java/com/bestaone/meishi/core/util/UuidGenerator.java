package com.bestaone.meishi.core.util;

import java.util.UUID;

import org.springframework.stereotype.Component;

/**
 * uuid型的ID生成器
 */
@Component("idGenerator")
public class UuidGenerator implements IdGenerator<String>{

	@Override
	public String generate() {
		return UUID.randomUUID().toString();
	}

}
