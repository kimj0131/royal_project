package com.ezen.royal.api.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.royal.api.dto.MemberDTO;
import com.ezen.royal.api.mapper.LoginMapper;

import lombok.extern.log4j.Log4j;


//테스트용 프로퍼티파일 등록 (JSP에서 사용 테스트)
//@PropertySource("classpath:config/naver.properties")
@Log4j
@Controller
public class NaverController {

	@Autowired
	LoginMapper loginMapper;

	// 테스트) 네이버 로그인 페이지 매핑
	@GetMapping("/user/login/naver")
	public String naver_login(HttpServletRequest request) {

		return "test/naver_login_test";
	}

	// 네이버 로그인(JS)요청 후
	@PostMapping("/user/login/naver")
	public ResponseEntity<MemberDTO> naver_login_compl(@RequestBody MemberDTO dto, HttpServletRequest request) {

		HttpSession session = request.getSession();

		log.info(dto);
		// 서비스로 변경예정
		loginMapper.upsertMember(dto);

		// 로그인상태 유지를 위해 session에 어트리뷰트 설정
		session.setAttribute("login_user", dto.getSocial_id());
		// 로그인상태에서 다시 로그인 버튼을 누르는 것을 막기위한 어트리뷰트 설정
		session.setAttribute("logging_in", true);

		log.info("[TEST LOG] 로그인한 유저 ID : " + session.getAttribute("login_user"));
		log.info("[TEST LOG] 유저 로그인 상태 : " + session.getAttribute("logging_in"));

		return ResponseEntity.status(HttpStatus.OK).contentType(MediaType.APPLICATION_JSON).body(dto);
	}

	// 로그인 요청 수행 후 리다이렉트 할 페이지 매핑
	@RequestMapping("/user/login/naver/callback")
	public String naver_callback() {
		return "test/naver_callback_test";
	}

	// 로그아웃 버튼 매핑
	@GetMapping("/user/logout")
	public String naver_logout(HttpSession session) {
		if (session != null && session.getAttribute("login_user") != null) {
			// 세션 초기화
			session.invalidate();
			log.info("[TEST LOG] 로그아웃 되었습니다");
		} else {
			log.warn("[TEST LOG] 로그인 상태가 아닙니다");
		}

		return "redirect:/user/login/naver";
	}

}
