package com.ezen.royal.kakaoLogin;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	kakaoService kakaoService;
	
	@RequestMapping("kakao/form")
	public String kakaoLoginForm() {
		return "kakao/kakaoLogin_form";
	}
	
	@GetMapping("kakao/login")
	public String kakaoLogin(@RequestParam("code") String code, HttpServletRequest req) {

		String accessToken = kakaoService.getAccessToken(code, req);
		kakaoService.getUserInfo(accessToken);

		return "redirect:/kakao/form";
	}
	
	@GetMapping("kakao/logout")
	public void kakaoLogout(HttpServletRequest req, HttpServletResponse resp) {
		
		kakaoService.logout((String)req.getSession().getAttribute("token"), req);
		
		System.out.println("로그아웃 한 후 세션 어트리뷰트: " + req.getSession().getAttribute("token"));
		
		try {
			resp.sendRedirect("https://kauth.kakao.com/oauth/logout?client_id=82f23fea0e0fa84ea9fbaa0106491ed8&logout_redirect_uri=http://192.168.0.110:9000/royal/kakao/form");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
