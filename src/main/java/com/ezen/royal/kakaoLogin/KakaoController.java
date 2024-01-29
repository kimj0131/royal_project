package com.ezen.royal.kakaoLogin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class KakaoController {
	
	@Autowired
	KakaoToken kakaoToken;
	
	@Autowired
	KakaoUserInfo kakaoUserInfo;
	
	@Autowired
	KakaoLogout kakaoLogout;
	
	@RequestMapping("kakao/form")
	public String kakaoLoginForm() {
		return "kakao/kakaoLogin_form";
	}
	
	@GetMapping("kakao/login")
	public String kakaoLogin(@RequestParam("code") String code, HttpServletRequest req) {

		String accessToken = kakaoToken.getKakaoAccessToken(code, req);
		kakaoUserInfo.getKakaoUserInfo(accessToken);

		return "redirect:/kakao/form";
	}
	
	@GetMapping("kakao/logout")
	public String kakaoLogout(HttpServletRequest req) {
		
		kakaoLogout.logout((String)req.getSession().getAttribute("token"), req);
		
		System.out.println("로그아웃 한 후 세션 어트리뷰트: " + req.getSession().getAttribute("token"));
		
		return "redirect:/kakao/form";
	}
}
