package com.kr.spt.mappers;

import java.util.List;

import com.kr.spt.vo.SecurityVO;



public interface LoginMapper extends GenericMapper<SecurityVO, String> {
	
	List<String> getAuthorityName(String username) throws Exception;
	String getUserPWD(String username) throws Exception;
	List<String> getResource(String authorityName) throws Exception;
	List<String> selectAllAuthorityName() throws Exception;
	List<SecurityVO> selectAllResource() throws Exception;
	
}
