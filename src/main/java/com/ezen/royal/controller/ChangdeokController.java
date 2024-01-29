package com.ezen.royal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/palace")
public class ChangdeokController {
	
/////////////창덕궁
	@GetMapping("/changdeokmain")
	public String changdeok() {
		return "/userViews/royal_intro/changdeokPalace/changdeokMain";
	}
	
	@GetMapping("/changdeokhistory")
	public String changdeokHistory() {
		return "/userViews/royal_intro/changdeokPalace/changdeokHistory";
	}

}
