package com.kr.spt.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	
	@RequestMapping(value = "/write")
    public String users(Authentication auth, HttpServletRequest request, HttpServletResponse response,
    		@RequestParam Map<String, Object> paramMap,
    		Model model)
    {
		
		log.info(" Controller free board Method in .............................");
		if(auth!=null){
			log.info(auth.toString());
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		log.info("name :  "+ auth.getName());
		log.info("detail : "+ auth.getDetails());
		log.info("principal : " + auth.getPrincipal());
		log.info("authorities : " + auth.getAuthorities());
		
		map.put("success", true);
		map.put("name", auth.getName());
		map.put("detail", auth.getDetails());
		map.put("principal", auth.getPrincipal());
		
        log.info(" req map :>>     "+paramMap.toString());
		model.addAttribute("data", map);
        
        return "freeboradRegist";
    }
	
	
}
