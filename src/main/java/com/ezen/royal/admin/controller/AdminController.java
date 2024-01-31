package com.ezen.royal.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/admin")
public class AdminController {

	@GetMapping("/login") // 관리자 로그인
	public String admin_login() {
		return "managerViews/login_view";
	}
	
	@GetMapping("/summary") // 관리자 요약 페이지
	public String admin_summary() {
		return "managerViews/main_views/summary";
	}
	
	@GetMapping("/event") // 관리자 행사 관리 페이지
	public String admin_event() {
		return "managerViews/main_views/event_manage";
	}
	
	@GetMapping("/notice") // 관리자 공지사항 수정 페이지
	public String admin_notice() {
		return "managerViews/main_views/notice_manage";
	}
	
	@GetMapping("/qna") // 관리자 qna관리 페이지
	public String admin_qna() {
		return "managerViews/main_views/qna_manage";
	}
	
	@GetMapping("/reservation") // 관리자 통합예약 관리 페이지
	public String admin_reservation() {
		return "managerViews/main_views/reservation_manage";
	}
}
