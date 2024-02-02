package com.ezen.royal.client.communication.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.royal.client.communication.service.QnaService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/communication")
public class QnaController {
	
	@Autowired
	QnaService qnaService;
	

	@GetMapping("/notice/qna")
	public String qna(Model model) {
		qnaService.qna(model);
		return "/userViews/notice/qna_form";
	}
	
	@PostMapping("/notice/qna")
	public String write() {
		return "redirect:/notice/qna";			
	}
}
