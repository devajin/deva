package com.kr.spt;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.junit.Test;

import com.kr.spt.service.LoginService;
import com.kr.spt.service.LoginService_ex;

public class SecurityTestService extends SpringTest {

	
	@Inject
	LoginService_ex ls;
	
	@Test
	public void testMethod() throws Exception{
		
		List<String> list = new ArrayList<String>();
		
		list = ls.getResource("auth_common");
		logger.info("------------------------------------");
		logger.info(" :: >>  " + list);
		logger.info("------------------------------------");
	}
	
	
}
