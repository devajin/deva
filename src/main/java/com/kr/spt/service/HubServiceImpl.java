package com.kr.spt.service;

import org.springframework.stereotype.Service;

import com.kr.spt.mappers.HubMapper;
import com.kr.spt.vo.HubVO;

@Service("HubService")
public class HubServiceImpl extends 
GenericServiceImpl<HubVO, String, HubMapper> implements HubService{

}
