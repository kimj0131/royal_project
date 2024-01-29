package com.ezen.royal.kakaoLogin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class KakaoLoginController {
	
	@Autowired
	KakaoToken kakaoToken;
	
	@Autowired
	KakaoUserInfo kakaoUserInfo;
	
	@RequestMapping("kakaoLogin/form")
	public String kakaoLoginForm() {
		return "kakaoLogin/kakaoLogin_form";
	}
	
	@GetMapping("kakaoLogin/insert")
	public String insertInfo(@RequestParam("code") String code) {

		String accessToken = kakaoToken.getKakaoAccessToken(code);
		
		kakaoUserInfo.createKakaoUser(accessToken);
		
		return "redirect:/kakaoLogin/form";
	}
}
