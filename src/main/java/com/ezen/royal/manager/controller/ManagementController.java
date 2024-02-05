package com.ezen.royal.manager.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.royal.manager.service.ManagerLoginService;
import com.ezen.royal.secure.SecureTools;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/YWRtaW5wYWdl")
public class ManagementController {
	
	@Autowired
	ManagerLoginService managerLoginService;
	

	// 관리자 로그인 페이지 매핑
	@GetMapping("/") // 관리자 로그인 페이지
	public String manager_login_view() {
		return "redirect:/YWRtaW5wYWdl/login";
	}
	@GetMapping("/login") // 관리자 로그인 페이지
	public String manager_login_view2() {
		return "managerViews/login_view";
	}
	
	// [TEST] id = royaladmin password = royaladmin
	// 관리자 로그인
	@PostMapping("/login") 
	public String manager_login(HttpServletRequest request, HttpSession session) {
		
		String id = request.getParameter("ID");
		String pwd = request.getParameter("password");
		
		if (id != null && pwd != null) {
			int result = managerLoginService.verification(id, pwd);
			
			if(result > 0) {
				log.info("[INFO] 관리자 로그인");
				
				// 로그인 유지, 확인을 위해 어트리뷰트 설정 (해쉬코드 아이디값) 
				session.setAttribute("login_admin", SecureTools.getHashedString(id));
				return "redirect:/YWRtaW5wYWdl/index";
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
	// 로그아웃
	@GetMapping("/logout")
	public String manager_logout(HttpServletRequest request, HttpSession session) {
		// 세션초기화
		session.invalidate();
		// 초기화 후 로그인페이지로 리다이렉트
		return "redirect:/YWRtaW5wYWdl/login";
	}
	
	// [인덱스]
	@GetMapping("/index")
	public String manage_index() {
		return "managerViews/main_views/index";
	}
	
	 // [예약] 삭제
	@GetMapping("/reservation/*")
	public String manage_reservation_delet(HttpServletRequest request) {
		String uri = request.getRequestURI();
		
		if (uri.endsWith("delete"))
			return "managerViews/main_views/reservation/delete";			
		else
			return "";
	}
	
	@GetMapping("/event/*") // 관리자 행사 관리 페이지
	public String manage_event(HttpServletRequest request) {
		String uri = request.getRequestURI();
		
		if (uri.endsWith("insert"))
			return "managerViews/main_views/event/insert";			
		else if (uri.endsWith("update"))
			return "managerViews/main_views/event/update";
		else if (uri.endsWith("delete"))
			return "managerViews/main_views/event/delete";
		else
			return "";
	}
	
	@GetMapping("/notice") // 관리자 공지사항 수정 페이지
	public String manage_notice() {
		return "managerViews/main_views/notice_manage";
	}
	
	@GetMapping("/qna") // 관리자 qna관리 페이지
	public String manage_qna() {
		return "managerViews/main_views/qna_manage";
	}

}
