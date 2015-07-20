package com.kr.spt.security;

import java.util.Collection;
import java.util.Iterator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.access.AccessDecisionManager;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.authentication.InsufficientAuthenticationException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;

public class MyAccessDecisionManager implements AccessDecisionManager {
	
	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Override
	public void decide(Authentication authentication, Object object,
			Collection<ConfigAttribute> configAttributes)
			throws AccessDeniedException, InsufficientAuthenticationException {
		// TODO Auto-generated method stub
		log.info("is't configAttr");
		if(configAttributes == null){
			
			log.info("configAttr... is null", configAttributes);
			return;
		}
		
		  Iterator<ConfigAttribute> ite = configAttributes.iterator();

		  while (ite.hasNext()) {
	            ConfigAttribute ca = ite.next();
	            String needRole = ((SecurityConfig) ca).getAttribute();
	            log.info("***** Security authentication size    " + authentication.getAuthorities().size());
	            for (GrantedAuthority ga : authentication.getAuthorities()) {

	                if (needRole.trim().equals(ga.getAuthority().trim())) {
	                    return;
	                }
	            }
	        }

	        throw new AccessDeniedException("");
		
	}

	@Override
	public boolean supports(ConfigAttribute attribute) {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return true;
	}

}
