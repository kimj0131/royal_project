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

import com.ezen.royal.api.service.KakaoService;
import com.ezen.royal.util.MakeDefaultAddress;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@PropertySource("classpath:config/kakao.properties") // kakao.properties 사용하기 위한 어노테이션
public class KakaoController {

	@Autowired
	KakaoService kakaoService;

	@Autowired
	Environment env; // kakao.properties 사용하기 위한 객체

	// 이후 로그인폼 컨트롤러로 바꾸면서 삭제 예정
	@RequestMapping("kakao/form")
	public String kakaoLoginForm() {
		return "kakao/kakaoLogin_form";
	}

	@GetMapping("kakao/login/ready")
	public void kakaoLoginReady(HttpServletRequest req, HttpServletResponse resp) {

		String client_id = env.getProperty("kakao.rest.api.key");
		// 카카오 개발자 페이지에서
		// 카카오 로그인에서 사용할 OAuth Redirect URI를 설정해야 함
		String redirect_uri = MakeDefaultAddress.getMakeDefaultAddress(req)
				+ env.getProperty("kakao.login.callback.uri");

		// 카카오 로그인 뷰로 이동
		try {
			resp.sendRedirect(String.format("https://kauth.kakao.com/oauth/authorize?"
					+ "response_type=code&client_id=%s&redirect_uri=%s&prompt=login", client_id, redirect_uri));
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	@GetMapping("kakao/login/finish")
	public String kakaoLogin(@RequestParam("code") String code, HttpServletRequest req) {

		String accessToken = kakaoService.getAccessToken(code, req);
		int result = kakaoService.upsertMember(accessToken, req);

		// [log]
		if (result > 0)
			log.info("upsert 완료");
		//

		return "redirect:/main/home";
	}

	@GetMapping("kakao/logout/ready")
	public void kakaoLogoutReady(HttpServletRequest req, HttpServletResponse resp) {
		
		String client_id = env.getProperty("kakao.rest.api.key");
		// 카카오 개발자 페이지에서
		// 카카오 로그인에서 사용할 Logout Redirect URI를 설정해야 함
		String redirect_uri = MakeDefaultAddress.getMakeDefaultAddress(req)
				+ env.getProperty("kakao.logout.callback.uri");
		
		// 카카오 로그아웃 뷰로 이동
		try {
			resp.sendRedirect(String.format("https://kauth.kakao.com/oauth/logout?"
					+ "client_id=%s&logout_redirect_uri=%s", client_id, redirect_uri));
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	@GetMapping("kakao/logout/finish")
	public String kakaoLogoutFinish(HttpServletRequest req) {

		// 카카오 로그아웃 뷰에서 사용자가 [이 서비스만 로그아웃],[카카오계정과 함께 로그아웃] 둘 중 하나를 선택하면
		// 이곳에 와서 세션 어트리뷰트를 삭제함
		kakaoService.logout(req);

		// [log]
		HttpSession session = req.getSession();
		String social_id = (String) session.getAttribute("social_id");
		log.info("(social_id)로그아웃 한 후 세션 어트리뷰트: " + social_id);
		//

		return "redirect:/kakao/form";
	}
}
