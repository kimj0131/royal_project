package com.ezen.royal.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.royal.admin.service.AdminLoginService;
import com.ezen.royal.secure.SecureTools;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/YWRtaW5wYWdl")
public class AdminController {
	
	@Autowired
	AdminLoginService adminLoginService;
	

	// 관리자 로그인 페이지 매핑
	@GetMapping("/") // 관리자 로그인 페이지
	public String admin_login_view() {
		return "redirect:/YWRtaW5wYWdl/login";
	}
	@GetMapping("/login") // 관리자 로그인 페이지
	public String admin_login_view2() {
		return "managerViews/login_view";
	}
	
	// [TEST] id = royaladmin password = royaladmin
	@PostMapping("/login") // 관리자 로그인
	public String admin_login(HttpServletRequest request,HttpSession session) {
		
		String id = request.getParameter("ID");
		String pwd = request.getParameter("password");
		
		if (id != null && pwd != null) {
			int result = adminLoginService.verification(id, pwd);
			
			if(result > 0) {
				log.info("[INFO] 관리자 로그인");
				
				// 로그인 유지, 확인을 위해 어트리뷰트 설정 (해쉬코드 아이디값) 
				session.setAttribute("login_admin", SecureTools.getHashedString(id));
				return "redirect:/YWRtaW5wYWdl/summary";
			} else {
				// 관리자 계정 로그인에 실패했을 때
				log.warn("[WARNING] 계정정보가 다릅니다");
				return "redirect:/YWRtaW5wYWdl/login";
			}
		} else {
			log.warn("[WARNING] 관리자 로그인에 문제가 발생했습니다");
			return "redirect:/YWRtaW5wYWdl/login";
		}
	}
	@GetMapping("/logout")
	public String admin_logout(HttpServletRequest request,HttpSession session) {
		
		// 세션초기화
		session.invalidate();
		// 초기화 후 로그인페이지로 리다이렉트
		return "redirect:/YWRtaW5wYWdl/login";
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
