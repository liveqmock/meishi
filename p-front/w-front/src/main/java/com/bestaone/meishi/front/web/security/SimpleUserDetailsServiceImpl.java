package com.bestaone.meishi.front.web.security;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.bestaone.meishi.model.UserImpl;
import com.bestaone.meishi.service.UserImplService;

/**
 * 用户详细信息服务
 * @author zhangguosheng
 */
@Service("simpleUserDetailsService")   
public class SimpleUserDetailsServiceImpl implements UserDetailsService {   

	protected final Log logger = LogFactory.getLog(this.getClass());
	
	@Autowired
	private UserImplService userImplService;

    /* (non-Javadoc)
     * @see org.springframework.security.core.userdetails.UserDetailsService#loadUserByUsername(java.lang.String)
     */
    @Override  
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {   
        //根据用户名查找用户   
    	UserImpl user = userImplService.quaryByUsername(username);   
        if (user == null) {
        	logger.debug("user not found");
            throw new UsernameNotFoundException("user not found");   
        }   
 
        Collection<GrantedAuthority> grantedAuths = obtionGrantedAuthorities(user);
        /**
         * org.springframework.security.core.userdetails.User  
         * @param username 用户名  
         * @param password 用户名密码  
         * @param enabled 如果账户可用设置为true  
         * @param accountNonExpired 如果账户未失效设置为true  
         * @param credentialsNonExpired 如果认证未失效设置为true  
         * @param accountNonLocked 如果账户未被锁定设置为true  
         * @param authorities 对应权限列表  
         */  
        org.springframework.security.core.userdetails.User userDetails 
        = new org.springframework.security.core.userdetails.User(user.getId(), user.getPassword(), true, true, true, true, grantedAuths);   
        return userDetails;   
    }  
    
	/**
	 * 取得用户的权限
	 * @param user
	 * @return
	 */
	private Set<GrantedAuthority> obtionGrantedAuthorities(UserImpl user) {
//		Set<Role> roles = user.getRoles();
		Set<GrantedAuthority> authSet = new HashSet<GrantedAuthority>();
//		for (Role role : roles) {
//			authSet.add(new SimpleGrantedAuthority("ROLE_" + role.getCode()));
//		}
		return authSet;
	}
  
}  