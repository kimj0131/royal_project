package com.ezen.royal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/palace")
public class GyeongbokController {
	
/////////////경복궁
	@GetMapping("/gyeongbokmain")
	public String gyeongbok() {
		return "/userViews/royal_intro/gyeongbokPalace/gyeongbokMain";
	}
	
	@GetMapping("/gyeongbokhistory")
	public String gyeongbokHistory() {
		return "/userViews/royal_intro/gyeongbokPalace/gyeonbokHistory";
	}


}
