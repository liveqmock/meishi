package com.bestaone.meishi.service;

import com.bestaone.meishi.core.service.IBaseService;
import com.bestaone.meishi.model.UserImpl;

public interface UserImplService extends IBaseService<UserImpl, String>{

	UserImpl quaryByUsernameAndPassword(String username, String password);

	UserImpl quaryByUsername(String username);
	
}
