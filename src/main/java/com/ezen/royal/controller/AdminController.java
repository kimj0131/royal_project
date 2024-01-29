package com.ezen.royal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/admin")
public class AdminController {

	@GetMapping("/login")
	public String admin_login() {
		return "managerViews/login_view";
	}
	
	@GetMapping("/summary")
	public String admin_summary() {
		return "managerViews/main_views/summary";
	}
	
	@GetMapping("/event")
	public String admin_event() {
		return "managerViews/main_views/event_manage";
	}
	
	@GetMapping("/notice")
	public String admin_notice() {
		return "managerViews/main_views/notice_manage";
	}
	
	@GetMapping("/qna")
	public String admin_qna() {
		return "managerViews/main_views/qna_manage";
	}
	
	@GetMapping("/reservation")
	public String admin_reservation() {
		return "managerViews/main_views/reservation_manage";
	}
}
