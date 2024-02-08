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
import com.ezen.royal.client.communication.service.FaqService;
import com.ezen.royal.client.communication.service.QnaService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/communication")
public class FaqController {

	@Autowired
	FaqService faqService;
	
	@Autowired
	QnaService qnaService;

	@GetMapping("/faq")
	public String faq(Model model) {
		faqService.faq(model);

		Integer uniqueValuesCount = faqService.getUniqueValuesCount();

		model.addAttribute("uniqueValuesCount", uniqueValuesCount);

		return "/userViews/notice/faq_form";
	}
	
	@PostMapping("/faq")
	public String insert(QnaDTO dto, RedirectAttributes rattr, HttpServletRequest req) {
			
		HttpSession session = req.getSession();
		
		String id = (String) session.getAttribute("login_user");
//		System.out.println(id);
		
		// 이런식으로 작성, member_id를 가져와야함
//		int member_id = faqMapper.getMemberId(id);
//		
//		dto.setMember_id(member_id);
		
		
//		int qna_id = qnaService.insert(dto);
//		
//		if (qna_id > 0) {
//			rattr.addAttribute("qna_id", qna_id);
//		}
		return "redirect:/communication/faq";
		
		
	}

}
