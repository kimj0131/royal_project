package com.ezen.royal.api.mapper;

import java.util.List;

import com.ezen.royal.api.dto.MemberDTO;

public interface MemberMapper {
	
	// member List
	List<MemberDTO> getMemberList();
	
	// member_id로 member_name을 리턴
	String memberNameForId(int member_id);
	

}
