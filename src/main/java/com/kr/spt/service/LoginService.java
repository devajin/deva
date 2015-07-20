package com.kr.spt.service;

import java.util.List;

import com.kr.spt.vo.SecurityVO;

public interface LoginService extends GenericService<SecurityVO, String> {

	public List<String> getAllAuthorityName() throws Exception;
	
	public List<String> getAuthorityName(String username) throws Exception;
	
	public String getPWD(String username) throws Exception;
	
	public List<String> getResource(String authorityName) throws Exception;
	
	public List<SecurityVO> getAllResource() throws Exception;
	
}
