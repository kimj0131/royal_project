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
@RequestMapping("/manage/main/qna")
public class QnaManageController {

	@Autowired
	QnaManageService qnaManageService;
	
	@Autowired
	MemberService memberService;

	// 작업성공을 확인하는 변수
	private boolean processingResult = false;
	private void checkingProcess(Model model, String alertType) {
		// 작업성공여부 확인 후 데이터를 싣는다
		if (processingResult == true) {
			model.addAttribute("alertType", alertType);
			processingResult = false;
		}
	}
		
	@GetMapping("/form/add") // 관리자 qna관리 페이지
	public String manage_qna(Model model) {
		
		// member 이름 map
		memberService.getMemberNameAll(model);

		// index 공용사용
		qnaManageService.getQNAList(model);
		qnaManageService.getQNAListResultEmpty(model);
		
		checkingProcess(model, "답변 추가");
		return "managerViews/main_views/qna/qna_answer_update";
	}
	

	@PostMapping("/answered") // 답변 추가
	public String manage_qna_update(HttpServletRequest request) {
		String qna_idString = request.getParameter("qna_id");
		String resultString = request.getParameter("qna_result");
		
		// log.info("qna_id : " + qna_idString);
		
		if (qna_idString != null && resultString != null) {
			int qna_id = Integer.parseInt(qna_idString);
			int result = qnaManageService.updateQNA(resultString, qna_id);
			if(result > 0) {
				processingResult = true;
			}
			return "redirect:/manage/main/qna/form/add";
		} else {
			// log.warn("[WARNING] 답변을 추가하는데 문제가 있었습니다.");
			return "redirect:/manage/main/qna/form/add";
		}
		
		
	}

}
