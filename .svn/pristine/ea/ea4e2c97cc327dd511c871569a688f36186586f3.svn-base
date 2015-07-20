package com.kr.spt.aoptest;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class Magician implements MindReader {
	
	private String thoughts;
	
	private static final Logger logger = LoggerFactory.getLogger(Magician.class);
	
	@Override
	public void interceptThing(String thoughts) {
		// TODO Auto-generated method stub
		logger.info(" intercepter volunteer's thoughis");
		this.thoughts = thoughts;
	}	

	@Override
	public String getThoughts() {
		// TODO Auto-generated method stub
		return thoughts;
	}

}
