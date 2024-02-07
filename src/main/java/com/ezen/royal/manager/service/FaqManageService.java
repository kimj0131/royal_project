package com.ezen.royal.manager.service;

import org.springframework.ui.Model;

import com.ezen.royal.manager.dto.FAQManageDTO;

public interface FaqManageService {
	
	// FAQ 리스트 가져오기
	/**
	 * * FAQ의 전체 목록을 attribute에 list로 싣는다 <br>
	 * ※ attribute name = FAQList
	 */
	void getFAQList(Model model);
	// FAQ 하나 가져오기
	/**
	 * * FAQ 하나를 attribute에 싣는다 <br>
	 * ※ attribute name = FAQ
	 */
	void getFAQResult(Model model, int fqu_id);
	
	// FAQ 추가
	/**
	 * * FAQManageDTO를 전달받아 DB에 추가한다 <br>
	 * ※ 성공시 1를 반환한다 <br>
	 */
	int insertFAQ(FAQManageDTO dto);
	
	// FAQ 수정
	/**
	 * * FAQManageDTO와 수정할 faq_id를 전달받아 수정한다 <br>
	 * ※ 성공시 1를 반환한다 <br>
	 */
	int updateFAQ(FAQManageDTO dto, int modify_id);
	
	// FAQ 삭제
	/**
	 * * 삭제할 faq_id를 전달받아 삭제한다 <br>
	 * ※ 성공시 1를 반환한다 <br>
	 */
	int deleteFAQ(int delete_id);
	
}
