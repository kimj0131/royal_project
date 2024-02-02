package com.ezen.royal.api.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.royal.api.dto.MemberDTO;
import com.ezen.royal.api.mapper.LoginMapper;

@Service
public class NaverServiceImpl implements NaverService{

	@Autowired
	LoginMapper loginMapper;
	
	// 네아로 api 서비스를 활용해 받은 데이터를 DB에 저장 및 업데이트하는 메서드
	@Override
	public int upsertMember(MemberDTO dto) {
		return loginMapper.upsertMember(dto);
	}
}
