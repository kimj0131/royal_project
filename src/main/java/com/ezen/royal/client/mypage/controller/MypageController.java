package com.ezen.royal.client.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller

@Log4j
@RequestMapping("/mypage")
public class MypageController {
	
	
	@GetMapping("/myPageView") // 마이페이지
	public String myPageView() {
		return "/userViews/mypage/mypage";
	}
}
