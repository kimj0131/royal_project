package com.ezen.royal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
		return "/palace/gyeongbok";
	}
	
	@GetMapping("/index/deoksu")
	public String deoksu() {
		return "/palace/deoksu";
	}

	@GetMapping("/index/changgyeong")
	public String changgyeong() {
		return "/palace/changgyeong";
	}

	@GetMapping("/index/changdeok")
	public String changdeok() {
		return "/palace/changdeok";
	}

	@GetMapping("/index/jongmyo")
	public String jongmyo() {
		return "/palace/jongmyo";
	}
	
	@GetMapping("/index/gb/history")
	public String gyeongbokHistory() {
		return "/introduce/gyeonbokHistory";
	}

	@GetMapping("/index/gb/inner")
	public String gyeongbokInner() {
		return "/introduce/gyeonbokInner";
	}


}
