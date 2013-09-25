package com.bestaone.meishi.api.user;


public interface SecurityUserService {

	SecurityUser<?> getByUsername(String username);

	SecurityUser<?> quaryByUsernameAndPassword(String username, String password);
	
}
