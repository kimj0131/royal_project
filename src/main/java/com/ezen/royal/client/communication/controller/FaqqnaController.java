package com.ezen.royal.client.communication.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.royal.client.communication.dto.QnaDTO;
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

	@GetMapping("/faq")
	public String faq(Model model, Integer royal_id) {

		if (royal_id == null) {
			faqService.getfaqList(model);
		} else {
			faqService.getfaqList_part(model, royal_id);
		}
//		Integer uniqueValuesCount = faqService.getUniqueValuesCount();
//
//		model.addAttribute("uniqueValuesCount", uniqueValuesCount);

		return "/userViews/notice/faq_form";
	}

	// 사용자가 qna(질문과답변)추가한다
	@PostMapping("/qna/add")
	public String insert(QnaDTO dto, HttpSession session) {

		String social_id = (String) session.getAttribute("login_user");

		// 세션에 있는 소셜아이디를 가져와서 멤버 아이디를 구한다
		int member_id = qnaService.getMemberId(social_id);

		// 가져온 아이디를 dto에 적용시킨다.
		dto.setMember_id(member_id);
		System.out.println(dto);

		int result = qnaService.qnaInsert(dto);

		if (result > 0) {
			// 리다이렉트 후 alert를 띄우기 위해 JavaScript로 redirect 및 alert 추가
			return "redirect:/communication/faq?alert=success";
		} else {
			// 리다이렉트 후 alert를 띄우기 위해 JavaScript로 redirect 및 alert 추가
			return "redirect:/main/home?alert=error";
		}
	}

}
