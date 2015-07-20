package com.kr.spt.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.authentication.encoding.PasswordEncoder;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mysql.jdbc.StringUtils;

/**
 * Handles requests for the application home page.
 */

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/start")
    public String start(Authentication auth, HttpServletRequest request, HttpServletResponse response,
    		@RequestParam Map<String, Object> paramMap,
    		Model model, HttpSession session )
    {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("success", true);
		map.put("name", auth.getName());
		map.put("detail", auth.getDetails());
		map.put("principal", auth.getPrincipal());
		
		session.setAttribute("name", auth.getName());
		session.setMaxInactiveInterval(60*60); //1시간
		
        logger.info(" req map    result :>>     "+ map.toString());
        logger.info(" session    result :>>     "+ session.toString());
        model.addAttribute("data", map);
        
        return "/index";
    }
	
	@RequestMapping(value = "/hub")
    public String hub(Authentication auth, HttpServletRequest request, HttpServletResponse response,
    		@RequestParam Map<String, Object> paramMap,
    		Model model)
    {
		
		logger.info(" Controller hub page Method in .............................");
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
        
        return "/hub";
    }
	
	@RequestMapping(value = "/sensor")
    public String sensor(Authentication auth, HttpServletRequest request, HttpServletResponse response,
    		@RequestParam Map<String, Object> paramMap,
    		Model model)
    {
		
		logger.info(" Controller sensor Method in .............................");
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
        
        return "/sensor";
    }
	
	@RequestMapping(value = "/freeboard")
    public String freeborad(Authentication auth, HttpServletRequest request, HttpServletResponse response,
    		@RequestParam Map<String, Object> paramMap,
    		Model model)
    {
		
		logger.info(" Controller free board Method in .............................");
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
        
        return "/freeborad";
    }
	
	@RequestMapping(value = "/notice")
    public String notice(Authentication auth, HttpServletRequest request, HttpServletResponse response,
    		@RequestParam Map<String, Object> paramMap,
    		Model model)
    {
		
		logger.info(" Controller free board Method in .............................");
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
        
        return "/notice";
    }
	
	
	@RequestMapping(value = "/users")
    public String users(Authentication auth, HttpServletRequest request, HttpServletResponse response,
    		@RequestParam Map<String, Object> paramMap,
    		Model model)
    {
		
		logger.info(" Controller free board Method in .............................");
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
        
        return "/users";
    }
	
	
	@RequestMapping(value = "/login")
    public String login(
    		@RequestParam Map<String, Object> paramMap,
    		Model model)
    {
		logger.info("----- login ------------------------");	
        return "/login";
    }
	
	
	@RequestMapping(value = "/loginFail")
    public String loginFail(
    		@RequestParam Map<String, Object> paramMap,
    		Model model)
    {
        return "/loginFail";
    }
	
	@RequestMapping(value = "/loginOut")
    public String loginOut(
    		@RequestParam Map<String, Object> paramMap,
    		Model model)
    {
        return "/loginOut";
    }

	///denied
	@RequestMapping(value = "/denied")
    public String denied(
    		@RequestParam Map<String, Object> paramMap,
    		Model model)
    {
        return "/denied";
    } 	
	 

}
	

