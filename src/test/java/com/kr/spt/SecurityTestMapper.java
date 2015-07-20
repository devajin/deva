package com.kr.spt;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.junit.Test;

import com.kr.spt.mappers.LoginMapper;
import com.kr.spt.vo.SecurityVO;


public class SecurityTestMapper extends SpringTest {

	@Inject
	LoginMapper lm;
	
	@Test
	public void testSecurityMapper() throws Exception{
		List<String> result = new ArrayList<String>();
		List<SecurityVO> svo = new ArrayList<SecurityVO>();
		
		
		logger.info("--------------------------------------");
		/*logger.info(lm.getUserPWD("admin"));*/
		
		/*result = lm.getAuthorityName("admin");
		logger.info(result);*/
		
		/*result = lm.selectAllAuthorityName();
		logger.info(result);*/
		
		/*svo = lm.selectAllResource();
		logger.info(svo);*/

		result = lm.getResource("auth_hub_u");
		logger.info(result);
		
		logger.info("--------------------------------------");
		
		
	}
	
	
}
