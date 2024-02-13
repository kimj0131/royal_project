package com.ezen.royal.manager.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ezen.royal.manager.dto.FAQManageDTO;
import com.ezen.royal.manager.mapper.FaqManageMapper;

@Service
public class FaqManageServiceImpl implements FaqManageService{

	@Autowired
	FaqManageMapper faqManageMapper;
	
	// FAQ 전체 리스트
	@Override
	public void getFAQList(Model model) {
		model.addAttribute("FAQList", faqManageMapper.getFAQList());
	}
	// FAQ 하나 가져오기
	@Override
	public void getFAQResult(Model model, int faq_id) {
		model.addAttribute("FAQ", faqManageMapper.getFAQResult(faq_id));
	}

	// FAQ 추가
	@Override
	public int insertFAQ(FAQManageDTO dto) {
		return faqManageMapper.insertFAQ(dto);
	}

	// FAQ 수정
	@Override
	public int updateFAQ(FAQManageDTO dto) {
		return faqManageMapper.updateFAQ(dto);
	}

	// FAQ 삭제
	@Override
	public int deleteFAQ(int delete_id) {
		return faqManageMapper.deleteFAQ(delete_id);
	}

	
	
}

