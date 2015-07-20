package com.kr.spt;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.junit.Test;

import com.kr.spt.mappers.BoardMapper;
import com.kr.spt.mappers.HubMapper;
import com.kr.spt.vo.BoardVO;
import com.kr.spt.vo.CriteriaVO;
import com.kr.spt.vo.HubVO;

public class MapperTest extends SpringTest {

	
	@Inject
	HubMapper hm;
	
	@Inject
	BoardMapper bm;
	
	
	public void testboardMapper()throws Exception{
		
		BoardVO bvo = new BoardVO();
		
		bvo.setBbs_nick("침대위어흥이");
		bvo.setBbs_email("dddd2000@naver.com");
		bvo.setBbs_title("dfdf첫번째 게시판 테스트");
		bvo.setBbs_type("N");
		bvo.setBbs_content("하나둘 셋 ....................................... 내용 ");
		bm.create(bvo);
		
	}
	
	
	public void testboardviewMapper()throws Exception{
		
		BoardVO bvo = new BoardVO();
		
		
		bvo =  bm.read("1");
		logger.info("--------------------");
		logger.info(bvo.toString());
	}
	
	
	public void testboardupMapper()throws Exception{
		
		BoardVO bvo = new BoardVO();
		
		bvo.setBbs_content("아 .... 하나둘  아아아아아아아아아아아아아아아아아아아아아아아아아아");
		bvo.setBbs_title("푸하하핫 테스트");
		bvo.setBbs_type("G");
		bvo.setBbs_seq("3");
		
		bm.update(bvo);
		
		logger.info("--------------------");
		logger.info(bvo.toString());
	}
	
	@Test
	public void testboarddelMapper()throws Exception {
		
		bm.delete("1");
		
		
	}
	
	
	
	/*	
  @Test
	public void testhubMapperRead() throws Exception{
		
		HubVO hvo = new HubVO();
		
		hvo = hm.read("GG01");
		
		logger.info("--------------------------------------------------");
		logger.info(hvo.toString());
		logger.info("--------------------------------------------------");
		
		
	}
	*/
	
	/*
	@Test
	public void testhubMapperInsert() throws Exception{
		HubVO hvo = new HubVO();
		
		hvo.setHub_id("YUI00");
		hvo.setHub_pw("0000");
		hvo.setHub_user("TAKE@daum.net");
		
		hm.create(hvo);
		
	}
	*/
	
/*	
	@Test
	public void testhubMapperList() throws Exception{
		//HubVO hvo = new HubVO();
		CriteriaVO cvo = new CriteriaVO();
		List<HubVO> list = new ArrayList<HubVO>();
		String[] type = {"hubid"};
		
		cvo.setType(type);
		cvo.setKeyword("G");
		cvo.setPage(1);
		list = hm.list(cvo) ;
		
		logger.info("---------------------------------------");
		logger.info(list);
		logger.info("---------------------------------------"); 
		
	}
	*/
	
	
}
