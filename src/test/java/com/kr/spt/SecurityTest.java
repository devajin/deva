package com.kr.spt;

import org.junit.Test;
import org.springframework.security.core.userdetails.User;

import com.kr.spt.security.MyUserDetailsService;

public class SecurityTest extends SpringTest{

	
	@Test
	public void testMethod() throws Exception{
		
		MyUserDetailsService ms = new MyUserDetailsService();
	
		
		logger.info(ms.loadUserByUsername("admin"));
		
	}
	
}
