package com.ezen.royal.client.communication.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.royal.client.communication.service.NoticeService;

import lombok.extern.log4j.Log4j;


@Log4j
@Controller
@RequestMapping("/communication")
public class NoticeController {

	@Autowired
	NoticeService noticeService;
	
	
	@GetMapping("/notice")
	public String notice(Model model) {
		
		noticeService.getNoticeList(model);
		
		Integer uniqueValuesCount = noticeService.getUniqueValuesCount();

		model.addAttribute("uniqueValuesCount", uniqueValuesCount);
		
		return "/userViews/notice/notice_list";
		
	
	}
}
