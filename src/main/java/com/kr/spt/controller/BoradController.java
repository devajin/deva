package com.kr.spt.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kr.spt.vo.CriteriaVO;
import com.kr.spt.vo.HubVO;

@Controller
@RequestMapping("/bbs")
public class BoradController {

	private static final Logger log = LoggerFactory.getLogger(BoradController.class);
	
	
	@RequestMapping(value="/List", method=RequestMethod.POST)
	public @ResponseBody List<HubVO> List(CriteriaVO cri) throws Exception{
		
		log.info("---------------::>> List Method in");
		log.info("paramiter ::>>  ");
		log.info(cri.toString());
		
		List<HubVO> list = new ArrayList<HubVO>();
		
		log.info("result data :>>");
		log.info(list.toString());
		return list;
	}
	
	
}
