package com.kr.spt.security;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.kr.spt.service.LoginService;
import com.kr.spt.service.LoginService_ex;

public class MyUserDetailsService implements UserDetailsService {

	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Resource(name="login")
	private LoginService_ex loginService;

	@Override
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {
		log.info("***** Security username : " + username);
		List<GrantedAuthority> auths = new ArrayList<GrantedAuthority>();
			List<String> authorityName = null;
			try {
				authorityName = this.loginService.getAuthorityName(username);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		for (String roleName : authorityName) {
			System.out.println(roleName);
			SimpleGrantedAuthority authority = new SimpleGrantedAuthority(
					roleName);
			auths.add(authority);
		}
		String pwd = null;
				try {
				pwd = this.loginService.getPWD(username);
				} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				}
		return new User(username, pwd, true, true, true, true, auths);

	}
    
	

}
