package com.kr.spt.service;

import java.util.List;

import javax.inject.Inject;

import com.kr.spt.mappers.GenericMapper;
import com.kr.spt.vo.CriteriaVO;


public abstract class GenericServiceImpl<E, ID, M extends GenericMapper<E, ID>> implements GenericService<E, ID> {

	protected M mapper;
	
	
	@Inject
	public void setMapper(M mapper){
		this.mapper = mapper;
		
	}

	@Override
	public void regist(E vo) throws Exception {
		mapper.create(vo);
		
	}

	@Override
	public E view(ID key) throws Exception {
		
		return mapper.read(key);
	}

	@Override
	public void modify(E vo) throws Exception {
		
		mapper.update(vo);
		
	}

	@Override
	public void remove(ID key) throws Exception {
		mapper.delete(key);
		
	}

	@Override
	public List<E> getList(CriteriaVO cri) throws Exception {
		
		return mapper.list(cri);
	}


}
