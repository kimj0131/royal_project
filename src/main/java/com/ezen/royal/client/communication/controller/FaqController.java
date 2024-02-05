package com.ezen.royal.client.communication.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.royal.client.communication.service.FaqService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/communication")
public class FaqController {

	@Autowired
	FaqService faqService;

	@GetMapping("/faq")
	public String faq(Model model) {
		faqService.faq(model);

		Integer uniqueValuesCount = faqService.getUniqueValuesCount();

		model.addAttribute("uniqueValuesCount", uniqueValuesCount);

		return "/userViews/notice/faq_form";
	}

}
