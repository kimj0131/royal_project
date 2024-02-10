package com.ezen.royal.api.service;

import org.springframework.ui.Model;

public interface MemberService {

	
	/**
	 * member_id를 key, member_name를 value로 한 Map을 attribute에 싣는다 <br>
	 * attribute name = memberNameMap
	 * @param model
	 */
	void getMemberNameAll(Model model);
	
	/**
	 * member_id로 member_name을 리턴받는다
	 * @param member_id
	 * @return member_name
	 */
	String memberNameForId(int member_id);
	
}
