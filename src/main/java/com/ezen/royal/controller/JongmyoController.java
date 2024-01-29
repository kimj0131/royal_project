package com.ezen.royal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/palace")
public class JongmyoController {
	
/////////////경복궁
	@GetMapping("/gyeongbokmain")
	public String gyeongbok() {
		return "/userViews/royal_intro/gyeongbokPalace/gyeongbokMain";
	}
	
	@GetMapping("/gyeongbokhistory")
	public String gyeongbokHistory() {
		return "/userViews/royal_intro/gyeongbokPalace/gyeonbokHistory";
	}
/////////////덕수궁
	@GetMapping("/deoksumain")
	public String deoksu() {
		return "/userViews/royal_intro/deoksuPalace/deoksuMain";
	}
	
	@GetMapping("/deoksuhistory")
	public String deoksuHistory() {
		return "/userViews/royal_intro/deoksuPalace/deoksuHistory";
	}
	
/////////////창경궁
	@GetMapping("/changgyeongmain")
	public String changgyeong() {
		return "/userViews/royal_intro/changgyeongPalace/changgyeongMain";
	}
	
/////////////창덕궁
	@GetMapping("/changdeokmain")
	public String changdeok() {
		return "/userViews/royal_intro/changdeokPalace/changdeokMain";
	}
	
/////////////종묘
	@GetMapping("/jongmyomain")
	public String jongmyo() {
		return "/userViews/royal_intro/jongmyoPalace/jongmyoMain";
	}


}
