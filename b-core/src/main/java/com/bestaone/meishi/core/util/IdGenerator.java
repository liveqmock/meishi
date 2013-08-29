package com.bestaone.meishi.core.util;

import java.io.Serializable;

/**
 * 主键生成器
 */
public interface IdGenerator<ID extends Serializable> {

	public ID generate();
}
