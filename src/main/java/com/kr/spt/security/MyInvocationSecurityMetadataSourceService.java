package com.kr.spt.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;

import com.kr.spt.service.LoginService_ex;

public class MyInvocationSecurityMetadataSourceService implements FilterInvocationSecurityMetadataSource{
	
	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	
	private LoginService_ex ls;
	
	
	private static Map<String, Collection<ConfigAttribute>> resourceMap = new HashMap<String, Collection<ConfigAttribute>>() ;
		
	public MyInvocationSecurityMetadataSourceService(LoginService_ex loginService) throws Exception {
		log.info("***----------------------------------------------***");
		this.ls = loginService;
		loadResourceDefine();
		
	}
	
	
	private void loadResourceDefine() throws Exception {
		// TODO Auto-generated method stub
		log.info("loadResourceDefine method ::: >>>  " + resourceMap);
		List<String> query = this.ls.getAllAuthorityName();
		log.info(" logger .... : >>  " + query.toString());
		
		for (String auth : query) {
			ConfigAttribute ca = new SecurityConfig(auth);
			log.info("forch auth  ...  :>> " + auth);
			log.info("forch ca  ...  :>> " + ca);
			List<String> query1 = this.ls.getResource(auth);
			log.info(" query get Resource auth   ...  :>> " + query1);
			for (String res : query1) {
				String url = res;
					log.info( " second forch  ::>>  " + res);
					log.info("static map ::>>   "+resourceMap.toString());
				/*
				 * 이미 관련 리소스 URL이 존재하는 경우, 리소스 파일 및 사용 권한의 대응을 결정, URL 권한의 설정,
				 * 사용 권한을 설정할 수있는 권한을 추출 할 핵심 통과 한 것입니다
				 */
					
				if (resourceMap.containsKey(url)) {
					Collection<ConfigAttribute> value = resourceMap.get(url);
					value.add(ca);
					resourceMap.put(url, value);
					log.info(" if true :: >>> " + resourceMap.containsKey(url));
				} else {
					Collection<ConfigAttribute> atts = new ArrayList<ConfigAttribute>();
					atts.add(ca);
					resourceMap.put(url, atts);
					log.info(" if false :: >>> " + ca);
				}
				log.info("+++++++++++++++ "+resourceMap.toString());
			}

		}
		log.info("********************************* end ****************************** ");
		
	}


	

	@Override
	public Collection<ConfigAttribute> getAllConfigAttributes() {
		// TODO Auto-generated method stub
		log.info("  ++++++++++++++++++++++++++++++++++ getallconfig");
		return null;
	}

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		
		log.info("  ++++++++++++++++++++++++++++++++++ supports(Class<?> clazz");
		return true;
	}


	@Override
	public Collection<ConfigAttribute> getAttributes(Object object)
			throws IllegalArgumentException {
		// TODO Auto-generated method stub
		// 객체는 사용자가 URL을 요청, URL이다
				String url = ((FilterInvocation) object).getRequestUrl();
				log.info("***** Security url : " + url);
				int firstQuestionMarkIndex = url.indexOf("?");

				if (firstQuestionMarkIndex != -1) {
					//?앞 URL만 가져오는건데 안씀..
					//url = url.substring(0, firstQuestionMarkIndex);
				}

				Iterator<String> ite = resourceMap.keySet().iterator();
				
				String resURLs = "";
				while (ite.hasNext()) {
					String resURL = ite.next();
					resURLs += resURL+":";
					if (url.equals(resURL) 
							//|| "/**".equals(resURL)
							) {
						log.info("+++++++++++++++ "+resourceMap.get(resURL).toString());
						log.info("-------------- resURLs "+resURLs);
						return resourceMap.get(resURL);
						
					}
				}
				log.info("-------------- resURLs "+resURLs);
				return null;
			}

}
