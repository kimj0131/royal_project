package com.ezen.royal.manager.service;

import org.springframework.ui.Model;

import com.ezen.royal.manager.dto.FAQManageDTO;

public interface FaqManageService {
	
	// FAQ 리스트 가져오기
	void getFAQList(Model model);
	// FAQ 하나 가져오기
	void getFAQResult(Model model, int fqu_id);
	
	// FAQ 추가
	int insertFAQ(FAQManageDTO dto);
	
	// FAQ 수정
	int updateFAQ(FAQManageDTO dto, int modify_id);
	
	// FAQ 삭제
	int deleteFAQ(int delete_id);
	
}
