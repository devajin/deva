package com.kr.spt.mappers;


import com.kr.spt.vo.BoardVO;
import com.kr.spt.vo.ImgeVO;

public interface BoardMapper extends GenericMapper<BoardVO, String> {
	
	void hit(String key) throws Exception;
	void imgcreate(ImgeVO vo) throws Exception;
	
}
