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
	/**
	 * * FAQ의 전체 목록을 attribute에 list로 싣는다 <br>
	 * ※ attribute name = FAQList
	 */
	@Override
	public void getFAQList(Model model) {
		model.addAttribute("FAQList", faqManageMapper.getFAQList());
	}
	// FAQ 하나 가져오기
	/**
	 * * FAQ 하나를 attribute에 싣는다 <br>
	 * ※ attribute naem = FAQ
	 */
	@Override
	public void getFAQResult(Model model, int faq_id) {
		model.addAttribute("FAQ", faqManageMapper.getFAQResult(faq_id));
	}

	// FAQ 추가
	/**
	 * * FAQManageDTO를 전달받아 DB에 추가한다 <br>
	 * ※ 성공시 1를 반환한다 <br>
	 */
	@Override
	public int insertFAQ(FAQManageDTO dto) {
		return faqManageMapper.insertFAQ(dto);
	}

	// FAQ 수정
	/**
	 * * FAQManageDTO와 수정할 faq_id를 전달받아 수정한다 <br>
	 * ※ 성공시 1를 반환한다 <br>
	 */
	@Override
	public int updateFAQ(FAQManageDTO dto, int modify_id) {
		return faqManageMapper.updateFAQ(dto, modify_id);
	}

	// FAQ 삭제
	/**
	 * * 삭제할 faq_id를 전달받아 삭제한다 <br>
	 * ※ 성공시 1를 반환한다 <br>
	 */
	@Override
	public int deleteFAQ(int delete_id) {
		return 0;
	}

	
	
}

