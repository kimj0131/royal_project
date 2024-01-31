package com.ezen.royal.api.mapper;

import com.ezen.royal.api.dto.MemberDTO;

public interface LoginMapperXML {
	int upsertMember(MemberDTO dto);
}
