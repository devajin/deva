package com.kr.spt;

import java.sql.SQLException;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;

public class DataSourceTest extends SpringTest {

	
	@Inject
	DataSource ds;
	
	@Test
	public void testds(){
		
		logger.info("::>>-----------------------------------------");
		//logger.info(ds);
		try {
			logger.info(ds.getConnection());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		logger.info("::>>-----------------------------------------");

		
	}
	
	
}
