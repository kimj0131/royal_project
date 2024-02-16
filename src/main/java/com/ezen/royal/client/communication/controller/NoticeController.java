package com.ezen.royal.client.communication.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.royal.client.communication.service.NoticeService;
import com.ezen.royal.client.communication.util.NoticeListVO;

import lombok.extern.log4j.Log4j;


@Log4j
@Controller
@RequestMapping("/communication")
public class NoticeController {

	@Autowired
	NoticeService noticeService;
	
	
	@GetMapping("/notice")
	public String notice(Model model, Integer royal_id, NoticeListVO vo,Integer nowPage, 
			Integer pagePostCnt) {
		
		if (royal_id == null) {
			noticeService.getNoticeList(model);
		} else {
			noticeService.getNoticeList_part(model, royal_id);
		}
		
	      
		noticeService.countBoard();
		noticeService.selectBoard(model, vo, nowPage, pagePostCnt);
		System.out.println("vo: " + vo);
		System.out.println("nowPage: " + nowPage);
		System.out.println("pagePostCnt: " + pagePostCnt);
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
