package com.ezen.royal.client.communication.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ezen.royal.client.communication.dto.QnaDTO;
import com.ezen.royal.client.communication.mapper.QnaMapper;
import com.ezen.royal.client.communication.service.FaqService;
import com.ezen.royal.client.communication.service.QnaService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/communication")
public class FaqqnaController {

	@Autowired
	FaqService faqService;
	
	@Autowired
	QnaService qnaService;
	
	@Autowired
	QnaMapper qnaMapper;

	@GetMapping("/faq")
	public String faq(Model model, Integer royal_id) {
		
		if(royal_id==null) {	
			faqService.faq(model);
		} else {
			faqService.faq2(model, royal_id);			
		}
		Integer uniqueValuesCount = faqService.getUniqueValuesCount();

		model.addAttribute("uniqueValuesCount", uniqueValuesCount);
		

		return "/userViews/notice/faq_form";
	}

	
	@PostMapping("/faq")
	public String insert(QnaDTO dto, RedirectAttributes rattr, HttpServletRequest req) {
			
		HttpSession session = req.getSession();
		
		String social_id = (String) session.getAttribute("login_user");
		
//		System.out.println(social_id);
		// 이런식으로 작성, member_id를 가져와야함
		Integer member_id = qnaMapper.getMemberId(social_id);
		
//		System.out.println(member_id);
		dto.setMember_id(member_id); 
		
		System.out.println(dto);
		
		int qna_id = qnaService.insert(dto);
		System.out.println(qna_id);
		
		if (qna_id > 0) {
			rattr.addAttribute("qna_id", qna_id);
		}
		return "redirect:/communication/faq";

	}
}
