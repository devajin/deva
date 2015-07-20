package com.kr.spt;

import javax.inject.Inject;


import org.junit.Test;
import com.kr.spt.aoptest.Magician;
import com.kr.spt.aoptest.Volunt;


public class Aoptest extends SpringTest {

	
	@Inject
	Magician magic;
	
	
	
	@Test
	public void magicTest(){
		Volunt volunt = new Volunt();
		//Magician mag = new Magician();
		volunt.thinkOfSomething("Queen of hearts /n");
		logger.info("===================================================");
		logger.info("Queen of hearts   :::" + magic.getThoughts());
	}
	
	
}
