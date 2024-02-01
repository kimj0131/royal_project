package com.ezen.royal.api.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class LoginController {
	
	// 로그인 페이지 매핑
	@GetMapping("/login/form")
	public String naver_login() {
		return "userViews/login/userLogin";
	}
}
