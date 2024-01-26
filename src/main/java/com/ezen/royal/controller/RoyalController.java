package com.ezen.royal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class RoyalController {

	@GetMapping("/index")
	public String coverPage() {
		return "/home/coverPage";
	}
	
	@GetMapping("/index/main")
	public String main() {
		return "/home/main";
	}

	@GetMapping("/index/gyeongbok")
	public String gyeongbok() {
		return "/gyeongbokPalace/gyeongbok";
	}
	
	@GetMapping("/index/deoksu")
	public String deoksu() {
		return "/deoksuPalace/deoksu";
	}

	@GetMapping("/index/changgyeong")
	public String changgyeong() {
		return "/changgyeongPalace/changgyeong";
	}

	@GetMapping("/index/changdeok")
	public String changdeok() {
		return "/changdeokPalace/changdeok";
	}

	@GetMapping("/index/jongmyo")
	public String jongmyo() {
		return "/jongmyoPalace/jongmyo";
	}
	
	@GetMapping("/index/gb/history")
	public String gyeongbokHistory() {
		return "/gyeongbokPalace/gyeonbokHistory";
	}

	@GetMapping("/index/gb/inner")
	public String gyeongbokInner() {
		return "/gyeongbokPalace/gyeonbokInner";
	}

	@GetMapping("/index/gb/guide")
	public String gyeongbokViewguide() {
		return "/gyeongbokPalace/gyeongbokViewguide";
	}

	@GetMapping("/index/gb/reserve")
	public String gyeongbokReserve() {
		return "/gyeongbokPalace/gyeongbokReserve";
	}

}
