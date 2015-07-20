package com.kr.spt.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kr.spt.service.HubService;
import com.kr.spt.vo.CriteriaVO;
import com.kr.spt.vo.HubVO;

@Controller
@RequestMapping("/Hub")
public class HubController {

	private static final Logger logger = LoggerFactory.getLogger(HubController.class);
	
	@Inject
	HubService hs;
	
	
	/*
	 * Controller  :  hub view 		 
	 * 요청된 허브 아디의 정보를 보여준다.
	 *  
	 * @param VO HubVO 
	 * @param hub_id
	 * @return {isComplete - 1 : sql 오류, 0 : 성공} 
	 */
	
	@RequestMapping(value="/viewHub", method=RequestMethod.POST)
	public @ResponseBody Map<String, Object> list(HubVO hvo) throws Exception{
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		
		logger.info(" ------------------  ::>> Hub  view  Method in <<::  ------------------");
		logger.info("paramiter ::>> {} " , hvo.toString());
		
		HubVO result = new HubVO();
		try {
			result = hs.view(hvo.getHub_id());
			map.put("isComplet", 0);
			map.put("result", result);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			map.put("isComplet", 1);
			map.put("excption", e.toString());
		}
		
		logger.info("result data :>>  {}" , result.toString());
		return map;
	}
	

	/*
	 * Controller  :  hub view 		 
	 * 요청된 허브 아디의 정보를 보여준다.
	 *  
	 * @param VO HubVO 
	 * @param hub_id
	 * @return {isComplete - 1 : sql 오류, 0 : 성공} 
	 */
	
	
	@RequestMapping(value="/getHubList", method=RequestMethod.POST)
	public @ResponseBody Map<String, Object> List(CriteriaVO cri) throws Exception{
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		logger.info(" ------------------  ::>> Hub List Method in <<::  ------------------");
		logger.info("paramiter ::>>  {}", cri.toString());
		
		
		List<HubVO> resultList = new ArrayList<HubVO>();
		
		try {
			resultList = hs.getList(cri);
			map.put("isComplet", 0);
			map.put("result", resultList);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			map.put("isComplet", 1);
			map.put("excption", e.toString());
		}
		
		
		
		logger.info("result data :: >>  {}", map.toString());
		
		return map;
	}
	
	
	
	@RequestMapping(value="/removeHub", method=RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> remove(
			@RequestParam(value="hub_id", required=false) String hub_id) throws Exception{
		
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		logger.info(" ------------------  ::>> Hub remove Method in <<::  ------------------");
		logger.info("paramiter ::>>  {}", hub_id);
		
		try {
			//hs.remove(hub_id);
			
			map.put("isComplet", 0);
			map.put("result", "success");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			map.put("isComplet", 1);
			map.put("excption", e.toString());
		}
		
		logger.info("result data :: >>  {}", map.toString());
		
		return map;
	}
	
	@RequestMapping(value="/modifyHub", method=RequestMethod.POST)
	public @ResponseBody HubVO View(HubVO hvo) throws Exception{
		logger.info(" ------------------  ::>> Hub modify Method in <<::  ------------------");
		HubVO viewHub = new HubVO();
		
		return viewHub;
	}
	
	@RequestMapping(value="/addHub")
	public String regist(Authentication auth, HttpServletRequest request, HttpServletResponse response,
    		@RequestParam Map<String, Object> paramMap,
    		Model model)
    {
		
		logger.info(" Controller hub regist page Method in #######################################################");
		if(auth!=null){
			logger.info(auth.toString());
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		logger.info("name :  "+ auth.getName());
		logger.info("detail : "+ auth.getDetails());
		logger.info("principal : " + auth.getPrincipal());
		logger.info("authorities : " + auth.getAuthorities());
		
		map.put("success", true);
		map.put("name", auth.getName());
		map.put("detail", auth.getDetails());
		map.put("principal", auth.getPrincipal());
		
        logger.info(" req map :>>     "+paramMap.toString());
		model.addAttribute("data", map);
        
        return "HubRegist";
	}
	
	
}
