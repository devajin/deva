package com.kr.spt;

import javax.inject.Inject;

import org.junit.Test;

import com.kr.spt.service.HubService;
import com.kr.spt.vo.HubVO;

public class ServiceTest extends SpringTest {

	@Inject
	HubService hs;
	
	
	public void testServcie() throws Exception{
		
		HubVO hvo = new HubVO();
		
		hvo = hs.view("GG02");
		
		logger.info("-----------------------------------------------------");
		logger.info(hvo.toString());
		logger.info("-----------------------------------------------------");
	}
	
	
	@Test
	public void testServciedele() throws Exception{
		
		HubVO hvo = new HubVO();
		
		hs.remove("LO3423");
		
		logger.info("-----------------------------------------------------");
		logger.info(hvo.toString());
		logger.info("-----------------------------------------------------");
	}
	
	
}
