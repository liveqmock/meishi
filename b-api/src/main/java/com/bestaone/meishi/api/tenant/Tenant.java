package com.bestaone.meishi.api.tenant;

import com.bestaone.meishi.api.entity.IdEntity;

/**
 * 租户接口
 * @author 张国圣
 */
public abstract class Tenant<T extends IdEntity<T>> extends IdEntity<T>{

	private static final long serialVersionUID = 7100520822709548836L;

}
