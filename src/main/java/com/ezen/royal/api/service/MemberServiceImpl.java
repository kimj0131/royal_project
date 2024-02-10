package com.ezen.royal.api.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ezen.royal.api.dto.MemberDTO;
import com.ezen.royal.api.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper memberMapper;

	@Override
	public void getMemberNameAll(Model model) {
		List<MemberDTO> memberList =  memberMapper.getMemberList();
		Map<Integer, String> memberNameMap = new HashMap<>();
		
		for (MemberDTO memberDTO : memberList) {
			memberNameMap.put(memberDTO.getMember_id(), memberDTO.getMember_name());
		}
		
		model.addAttribute("memberNameMap", memberNameMap);
	}

	@Override
	public String memberNameForId(int member_id) {
		return memberMapper.memberNameForId(member_id);
	}

}
