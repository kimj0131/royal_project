package com.ezen.royal.manager.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.royal.api.service.MemberService;
import com.ezen.royal.manager.service.NoticeManageService;
import com.ezen.royal.manager.service.QnaManageService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/manage/main/notice")
public class NoticeManageController {

	@Autowired
	NoticeManageService noticeManageService;

	@GetMapping("/form/*")
	public String manage_event_form(HttpServletRequest request, Model model) {

		// 행사 테이블 리스트 실어주기
		noticeManageService.getNoticeList(model);

		String uri = request.getRequestURI();

		if (uri.endsWith("insert")) {
			return "managerViews/main_views/notice/insert";
		} else if (uri.endsWith("update")) {
			return "managerViews/main_views/notice/update";
		} else if (uri.endsWith("delete")) {
			return "managerViews/main_views/notice/delete";
		} else {
			return "";
		}
	}
}
