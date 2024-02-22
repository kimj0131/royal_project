package com.ezen.royal.api.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.royal.api.dto.MemberDTO;
import com.ezen.royal.api.service.NaverService;

import lombok.extern.log4j.Log4j;

//테스트용 프로퍼티파일 등록 (JSP에서 사용 테스트)
//@PropertySource("classpath:config/naver.properties")
@Log4j
@Controller
public class NaverController {

	@Autowired
	NaverService naverService;

	// 테스트) 네이버 로그인 페이지 매핑
	@GetMapping("/user/login/naver")
	public String naver_login(HttpServletRequest request) {

		// return "test/naver_login_test";
		return "main/home";
	}

	// 로그인버튼 클릭 후 리다이렉트 할 페이지 매핑
	// 리다이렉트 한 페이지에서 로그인한 유저정보를 네이버에 요청해서 받아온다
	@RequestMapping("/user/login/naver/callback")
	public String naver_callback() {
		return "/userViews/login/naver_callback";
	}

	// 리다이렉트 페이지에서 유저정보 요청 후 처리
	@PostMapping("/user/login/naver")
	public String naver_login_compl(HttpServletRequest request, HttpSession session) {

		// System.out.println("social_id : "+request.getParameter("social_id"));
		
		MemberDTO dto = new MemberDTO();

		dto.setSocial_id(request.getParameter("social_id"));
		dto.setMember_name(request.getParameter("user_name"));
		dto.setMember_email(request.getParameter("user_email"));
		dto.setMember_type(request.getParameter("social_type"));
		
		// log.info("[TEST LOG] 요청해서 받은 유저 데이터 : " + dto);

		// 멤버 데이터 add or update
		int result = naverService.upsertMember(dto);

		if (result > 0) {
			// 로그인상태 유지를 위해 session에 어트리뷰트 설정
			session.setAttribute("login_user", dto.getSocial_id());
			// 로그인을 한 소셜타입 설정(naver)
			session.setAttribute("login_type ", dto.getMember_type());
			// 로그인을 한 유저네임
			session.setAttribute("login_name", dto.getMember_name());

			// 로그인상태에서 다시 로그인 버튼을 누르는 것을 막기위한 어트리뷰트 설정 (필요 X?)
			// session.setAttribute("logging_in", true);

			// log.info("[TEST LOG] 로그인한 유저 ID : " + session.getAttribute("login_user"));
			// log.info("[TEST LOG] 유저 로그인 상태 : " + session.getAttribute("logging_in"));

			return "redirect:/main/home";
		} else {
			log.warn("[TEST LOG] 유저정보를 처리하는데 문제가 발생했습니다");
			return "redirect:/main/login";
		}

	}

	// 로그아웃 매핑
	@GetMapping("/user/logout")
	public String naver_logout(HttpSession session) {
		if (session != null && session.getAttribute("login_user") != null) {
			// 세션 초기화
			session.invalidate();
			// log.info("[TEST LOG] 로그아웃 되었습니다");
		} else {
			// log.warn("[TEST LOG] 로그인 상태가 아닙니다");
		}

		return "redirect:/main/home";
	}

}
