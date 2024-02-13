package com.ezen.royal.client.communication.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.royal.client.communication.service.NoticeService;

import lombok.extern.log4j.Log4j;


@Log4j
@Controller
@RequestMapping("/communication")
public class NoticeController {

	@Autowired
	NoticeService noticeService;
	
	
	@GetMapping("/notice")
	public String notice(Model model, Integer royal_id) {
		
		if (royal_id == null) {
			noticeService.getNoticeList(model);
		} else {
			noticeService.getNoticeList_part(model, royal_id);
		}
		
		return "/userViews/notice/notice_list";
	}
	
	@PostMapping("/notice")
	public String searchNotice(Model model, HttpServletRequest req) {
		
//		System.out.println("form test");
//		// req.getParameter("search_input_id");
//		System.out.println(req.getParameter("search_input_id"));
//		System.out.println(req.getParameter("search_select_id"));
		
		String searchType = req.getParameter("search_select_id");
		String searchString = req.getParameter("search_input_id");
		
		
		noticeService.search(model, searchType, searchString);
		
		return "/userViews/notice/notice_list";
	}
	
	
	@GetMapping("/notice_detail")
	public String notice_detail(int notice_id, Model model) {
		
		noticeService.getNoticeDTO(notice_id, model);
		
		return "/userViews/notice/notice_detail";
	}

}
