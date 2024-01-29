package com.ezen.royal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/palace")
public class DeoksuController {
	

/////////////덕수궁
	@GetMapping("/deoksumain")
	public String deoksu() {
		return "/userViews/royal_intro/deoksuPalace/deoksuMain";
	}
	
	@GetMapping("/deoksuhistory")
	public String deoksuHistory() {
		return "/userViews/royal_intro/deoksuPalace/deoksuHistory";
	}

}
