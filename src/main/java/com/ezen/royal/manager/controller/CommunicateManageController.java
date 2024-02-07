package com.ezen.royal.manager.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/YWRtaW5wYWdl")
public class CommunicateManageController {

	@GetMapping("/notice/*") // 관리자 공지사항 수정 페이지
	public String manage_notice(HttpServletRequest request) {
		String uri = request.getRequestURI();

		if (uri.endsWith("insert"))
			return "managerViews/main_views/notice/notice_insert";
		else if (uri.endsWith("update"))
			return "managerViews/main_views/notice/notice_update";
		else if (uri.endsWith("delete"))
			return "managerViews/main_views/notice/notice_delete";
		else
			return "";
	}

	@GetMapping("/qna") // 관리자 qna관리 페이지
	public String manage_qna() {
		return "managerViews/main_views/qna/qna_answer_update";
	}

}
