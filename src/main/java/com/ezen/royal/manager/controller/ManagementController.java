package com.ezen.royal.manager.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.ezen.royal.manager.service.EventManageService;
import com.ezen.royal.manager.service.ManagerLoginService;
import com.ezen.royal.manager.service.QnaManageService;
import com.ezen.royal.secure.SecureTools;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class ManagementController {

	@Autowired
	ManagerLoginService managerLoginService;

	@Autowired
	QnaManageService qnaManageService;
	
	@Autowired
	EventManageService eventManageService;

	// 관리자 로그인 페이지 매핑
	@GetMapping("/manage/") // 관리자 로그인 페이지
	public String manager_login_view() {
		return "redirect:/manage/login";
	}

	@GetMapping("/manage/login") // 관리자 로그인 페이지
	public String manager_login_view2() {
		return "managerViews/login_view";
	}

	// [TEST] id = royaladmin password = royaladmin
	// 관리자 로그인
	@PostMapping("/manage/login")
	public String manager_login(HttpServletRequest request, HttpSession session) {

		String id = request.getParameter("ID");
		String pwd = request.getParameter("password");

		if (id != null && pwd != null) {
			int result = managerLoginService.verification(id, pwd);

			if (result > 0) {
				log.info("[INFO] 관리자 로그인");

				// 로그인 유지, 확인을 위해 어트리뷰트 설정 (해쉬코드 아이디값)
				session.setAttribute("login_admin", SecureTools.getHashedString(id));
				return "redirect:/manage/main/index";
			} else {
				// 관리자 계정 로그인에 실패했을 때
				log.warn("[WARNING] 계정정보가 다릅니다");
				return "redirect:/manage/login";
			}
		} else {
			log.warn("[WARNING] 관리자 로그인에 문제가 발생했습니다");
			return "redirect:/manage/login";
		}
	}

	// 로그아웃
	@GetMapping("/manage/logout")
	public String manager_logout(HttpServletRequest request, HttpSession session) {
		// 세션초기화
		session.invalidate();
		// 초기화 후 로그인페이지로 리다이렉트
		return "redirect:/manage/login";
	}

	// [인덱스]
	@GetMapping("/manage/main/index")
	public String manage_index(Model model) {
		
		// index qna리스트
		qnaManageService.getQNAList(model);
		// 30일내 시작하는 event 리스트
		eventManageService.getEventListBegin30Days(model);
		
		return "managerViews/main_views/index";
	}

}
