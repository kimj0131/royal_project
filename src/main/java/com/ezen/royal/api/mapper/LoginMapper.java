package com.ezen.royal.api.mapper;

import com.ezen.royal.api.dto.MemberDTO;

public interface LoginMapper {
	int upsertMember(MemberDTO dto);
}
