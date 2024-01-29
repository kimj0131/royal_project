package com.ezen.royal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/palace")
public class JongmyoController {
	

/////////////종묘
	@GetMapping("/jongmyomain")
	public String jongmyo() {
		return "/userViews/royal_intro/jongmyoPalace/jongmyoMain";
	}
	
	@GetMapping("/jongmyokhistory")
	public String jongmyoHistory() {
		return "/userViews/royal_intro/jongmyoPalace/jongmyoHistory";
	}

}
