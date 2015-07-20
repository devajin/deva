package com.kr.spt;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;


public class TimerTest extends SpringTest {

	@Inject
	SqlSessionFactory sf;
	
	@Test
	public void sfTest() throws Exception{
		
		SqlSession s = sf.openSession();
		
		logger.info("---------------------------------------------");
		logger.info(s.selectOne("com.kr.spt.mappers.Timer.getTime"));
		logger.info("---------------------------------------------");
		s.close();
	}
	
	
	
	
}
