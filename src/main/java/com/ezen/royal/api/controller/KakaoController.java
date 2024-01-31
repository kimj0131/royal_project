package com.ezen.royal.api.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.royal.api.service.kakaoService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@PropertySource("classpath:config/kakao.properties") // kakao.properties 사용하기 위한 어노테이션
public class KakaoController {
	
	@Autowired
	kakaoService kakaoService;
	
	@Autowired
	Environment env; // kakao.properties 사용하기 위한 객체
	
	// 이후 로그인폼 컨트롤러로 바꾸면서 삭제 예정
	@RequestMapping("kakao/form")
	public String kakaoLoginForm() {
		return "kakao/kakaoLogin_form";
	}
	
	@GetMapping("kakao/login")
	public String kakaoLogin(@RequestParam("code") String code, HttpServletRequest req) {

		String accessToken = kakaoService.getAccessToken(code, req);
		int result = kakaoService.upsertMember(accessToken, req);

		return "redirect:/kakao/form";
	}
	
	@GetMapping("kakao/logout")
	public void kakaoLogout(HttpServletRequest req, HttpServletResponse resp) {
		
		kakaoService.logout((String)req.getSession().getAttribute("token"), req);
		
		HttpSession session = req.getSession();
		log.info("(token)로그아웃 한 후 세션 어트리뷰트: " + session.getAttribute("token"));
		log.info("(social_id)로그아웃 한 후 세션 어트리뷰트: " + session.getAttribute("social_id"));
		
		try {
			resp.sendRedirect(String.format(
					"https://kauth.kakao.com/oauth/logout?client_id=%s&" 
							+ "logout_redirect_uri=%s/royal/kakao/form",
								env.getProperty("REST_API_KEY"), env.getProperty("IP")));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
