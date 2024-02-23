package com.ezen.royal.manager.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezen.royal.manager.dto.NoticeManageDTO;
import com.ezen.royal.manager.service.NoticeManageService;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/manage/main/notice")
public class NoticeManageController {

	@Autowired
	NoticeManageService noticeManageService;

	// 작업성공을 확인하는 변수
	private boolean processingResult = false;
	private void checkingProcess(HttpServletRequest request, String alertType) {
		// 작업성공여부 확인 후 데이터를 싣는다
		if (processingResult == true) {
			request.setAttribute("alertType", alertType);
			processingResult = false;
		}
	}

	
	@GetMapping("/form/*")
	public String manage_event_form(HttpServletRequest request, Model model) {

		String uri = request.getRequestURI();

		// 행사 테이블 리스트 실어주기
		noticeManageService.getNoticeList(model);

		if (uri.endsWith("list")) {
			return "managerViews/main_views/notice/list";
		} else if (uri.endsWith("insert")) {
			checkingProcess(request, "공지사항 추가");
			return "managerViews/main_views/notice/insert";
		} else if (uri.endsWith("update")) {
			checkingProcess(request, "공지사항 수정");
			return "managerViews/main_views/notice/update";
		} else if (uri.endsWith("delete")) {
			checkingProcess(request, "공지사항 삭제");
			return "managerViews/main_views/notice/delete";
		} else {
			return "";
		}
	}
	
	@PostMapping("/post/*")
	public String manage_event_post(HttpServletRequest request) {
		String uri = request.getRequestURI();

		if (uri.endsWith("insert")) {
			String royal_id = request.getParameter("royal_id");
			String notice_title = request.getParameter("notice_title");
			String notice_content = request.getParameter("notice_content");
			
			NoticeManageDTO dto = new NoticeManageDTO();
			dto.setRoyal_id(Integer.parseInt(royal_id));
			dto.setNotice_title(notice_title);
			dto.setNotice_content(notice_content);
			
			int result = noticeManageService.insertNotice(dto);
			if(result > 0) {
				processingResult = true;
			}
			
			return "redirect:/manage/main/notice/form/insert";
			
		} else if (uri.endsWith("update")) {
			
			int modified_id = Integer.parseInt(request.getParameter("selected_notice"));
			String royal_id = request.getParameter("royal_id");
			String notice_title = request.getParameter("notice_title");
			String notice_content = request.getParameter("notice_content");
			
			NoticeManageDTO dto = new NoticeManageDTO();
			dto.setNotice_id(modified_id);
			dto.setRoyal_id(Integer.parseInt(royal_id));
			dto.setNotice_title(notice_title);
			dto.setNotice_content(notice_content);
			
			int result = noticeManageService.updateNotice(dto);
			if(result > 0) {
				processingResult = true;
			}
			
			
			return "redirect:/manage/main/notice/form/update";
			
		} else if (uri.endsWith("delete")) {
			int result = noticeManageService.deleteNotice(Integer.parseInt(request.getParameter("notice_id")));
			if(result > 0) {
				processingResult = true;
			}
			
			return "redirect:/manage/main/notice/form/delete";
		} else {
			return "";
		}
	}
	
	@ResponseBody
	@GetMapping("/ajax/{notice_id}")
	public String manage_event_ajax_get(@PathVariable("notice_id") Integer notice_id, HttpServletRequest request, Model model) {

		noticeManageService.getNoticeDetail(model, notice_id);

		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> data = new HashMap<>();
		String result = null;

		data.put("notice", model.getAttribute("notice"));

		try {
			result = mapper.writeValueAsString(data);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
}
