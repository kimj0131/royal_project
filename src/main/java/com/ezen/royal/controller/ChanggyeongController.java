package com.ezen.royal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/palace")
public class ChanggyeongController {
	
/////////////창경궁
	@GetMapping("/changgyeongmain")
	public String changgyeong() {
		return "/userViews/royal_intro/changgyeongPalace/changgyeongMain";
	}
	
	@GetMapping("/changgyeonghistory")
	public String chnggyeongHistory() {
		return "/userViews/royal_intro/changgyeongPalace/changgyeongHistory";
	}
}
