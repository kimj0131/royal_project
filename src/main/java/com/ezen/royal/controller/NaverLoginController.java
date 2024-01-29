package com.ezen.royal.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.royal.service.LoginService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/user/login/")
public class NaverLoginController {

	@Autowired
	LoginService loginService;

	// 테스트 페이지 매핑
	@GetMapping("/")
	public String user_login() {

		return "test/naver_login_test";
	}

	// 네이버 로그인 버튼 매핑	
	@GetMapping("naver")
	public void naver_login(HttpServletResponse response) throws UnsupportedEncodingException{
		String url = loginService.getNaverAuthorizeUrl("authorize");
		
		try {
			response.sendRedirect(url);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@GetMapping("naver/oauth")
	public void callback(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		
		String url = loginService.getNaverTokenUrl("token");
		
	}
	
	
	

}
