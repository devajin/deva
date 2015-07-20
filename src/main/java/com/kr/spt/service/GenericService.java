package com.kr.spt.service;

import java.util.List;

import com.kr.spt.vo.CriteriaVO;

public interface GenericService<E, K> {

	void regist(E vo) throws Exception;
	E view(K key) throws Exception;
	void modify(E vo) throws Exception;
	void remove(K key) throws Exception;
	List<E> getList(CriteriaVO vo) throws Exception;
	//List<E> getSearch(CriteriaVO vo) throws Exception;
	
}
