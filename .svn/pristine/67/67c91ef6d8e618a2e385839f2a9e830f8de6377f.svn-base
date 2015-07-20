package com.kr.spt.security;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;

public class LoginSuccessHandler implements AuthenticationSuccessHandler{

	private Logger log = LoggerFactory.getLogger(this.getClass());
	private RedirectStrategy redircetS = new DefaultRedirectStrategy();
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest req,
			HttpServletResponse res, Authentication auth) throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		ObjectMapper om = new ObjectMapper();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("success", true);
		map.put("returnUrl", getReturnUrl(req, res));
		map.put("name", auth.getName());
		map.put("detail", auth.getDetails());
		map.put("principal", auth.getPrincipal());
		// {"success" : true, "returnUrl" : "..."}
		String jsonString = om.writeValueAsString(map);
		
		//OutputStream out = response.getOutputStream();
		//out.write(jsonString.getBytes());
		log.info("  login auth :>> " + auth);
		log.info("  login get principal :>> " + auth.getPrincipal());
		log.info(jsonString);
		
		
		//redircetS.sendRedirect(req, res, req.getContextPath() + "/start");
		
    	res.sendRedirect(req.getContextPath() + "/start");
		
		
	}

	/**
	 * 로그인 하기 전의 요청했던 URL을 알아낸다.
	 * 
	 * @param request
	 * @param response
	 * @return
	 */
	private String getReturnUrl(HttpServletRequest request, HttpServletResponse response) {
		RequestCache requestCache = new HttpSessionRequestCache();
		SavedRequest savedRequest = requestCache.getRequest(request, response);
		if (savedRequest == null) {
			log.info("get retrn url ::>>  "+request.getSession().getServletContext().getContextPath());
			return request.getSession().getServletContext().getContextPath();
		}
		return savedRequest.getRedirectUrl();
	}
	
	
	
}
