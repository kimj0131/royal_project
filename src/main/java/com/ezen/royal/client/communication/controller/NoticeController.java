package com.ezen.royal.client.communication.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/communication")
public class NoticeController {

	@GetMapping("/notice")
	public String notice() {
		return "/userViews/notice/notice_list";
	}
}
