package com.ezen.royal.api.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.royal.api.dto.MemberDTO;
import com.ezen.royal.api.mapper.LoginMapper;

@Service
public class NaverServiceImpl implements NaverService{

	@Autowired
	LoginMapper loginMapper;
	
	@Override
	public int upsertMember(MemberDTO dto) {
		return loginMapper.upsertMember(dto);
	}
}
