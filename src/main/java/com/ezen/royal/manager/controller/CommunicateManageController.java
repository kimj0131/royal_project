package com.ezen.royal.manager.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.royal.api.service.MemberService;
import com.ezen.royal.manager.service.QnaManageService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/manage")
public class CommunicateManageController {

	@Autowired
	QnaManageService qnaManageService;
	
	@Autowired
	MemberService memberService;

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
	public String manage_qna(Model model) {
		
		// member 이름 map
		memberService.getMemberNameAll(model);

		// index 공용사용
		qnaManageService.getQNAList(model);
		qnaManageService.getQNAListResultEmpty(model);
		return "managerViews/main_views/qna/qna_answer_update";
	}
	

	@PostMapping("/qna") // 답변 추가
	public String manage_qna_update(HttpServletRequest request) {
		String qna_idString = request.getParameter("qna_id");
		String resultString = request.getParameter("qna_result");
		
		// log.info("qna_id : " + qna_idString);
		
		if (qna_idString != null && resultString != null) {
			int qna_id = Integer.parseInt(qna_idString);
			qnaManageService.updateQNA(resultString, qna_id);
			return "redirect:/YWRtaW5wYWdl/qna";
		} else {
			log.warn("[WARNING] 답변을 추가하는데 문제가 있었습니다.");
			return "redirect:/manage/qna";
		}
		
		
	}

}
