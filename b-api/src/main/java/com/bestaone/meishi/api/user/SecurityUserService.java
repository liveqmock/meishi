package com.bestaone.meishi.api.user;


public interface SecurityUserService {

	SecurityUser<?> quaryByUsername(String username);

	SecurityUser<?> quaryByUsernameAndPassword(String username, String password);
	
}
