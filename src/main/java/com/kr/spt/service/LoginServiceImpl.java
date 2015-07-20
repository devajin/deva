package com.kr.spt.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.kr.spt.mappers.LoginMapper;
import com.kr.spt.vo.SecurityVO;


@Service("LoginService")
public class LoginServiceImpl extends 
GenericServiceImpl<SecurityVO, String, LoginMapper> implements
		LoginService {
	
	private Logger log = LoggerFactory.getLogger(this.getClass());
	
	public List<String> getAllAuthorityName() throws Exception {
		
		log.info("List<String> getAllAuthorityName() ::: ---------------");
				
		return mapper.selectAllAuthorityName();				
	}
	
	public List<String> getAuthorityName(String username) throws Exception{
		log.info(" --------- login service  ::: >>>  List<String> getAuthorityName(String  " + username + " )  ::: ----------");
				
		return mapper.getAuthorityName(username);
	}
	
	public String getPWD(String username) throws Exception{
		log.info("  login service getPWD ( " + username + " ) ::: --------------------");
		return  mapper.getUserPWD(username);
	}
	
	public List<String> getResource(String authorityName) throws Exception{
		log.info(" List<String> getResource(String authorityName) ::: --------------------");
		
		return mapper.getResource(authorityName);
	}
	
	public List<SecurityVO> getAllResource() throws Exception{
		log.info(" List<String> getAllResource()  ::: --------------------");
		return mapper.selectAllResource();
	}


}
