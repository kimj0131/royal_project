package com.ezen.royal.client.communication.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String notice(Model model, Integer royal_id, NoticeListVO vo, Integer nowPage, 
			Integer pagePostCnt) {
		
		// 페이징 처리 하기 전의 로직
//		if (royal_id == null) {
//			noticeService.getNoticeList(model);
//		} else {
//			noticeService.getNoticeList_part(model, royal_id);
//		}
		
	    // 페이징 처리 서비스
		noticeService.countBoard(royal_id);
		noticeService.selectBoard(model, royal_id, vo, nowPage, pagePostCnt);
//		System.out.println("vo: " + vo);	
//		System.out.println("nowPage: " + nowPage);
//		System.out.println("pagePostCnt: " + pagePostCnt);
		return "/userViews/notice/notice_list";
	}
	
	@PostMapping("/notice")
	public String searchNotice(Model model, HttpServletRequest req, NoticeListVO vo, Integer nowPage, 
			Integer pagePostCnt) {
		
//		System.out.println("form test");
//		// req.getParameter("search_input_id");
//		System.out.println(req.getParameter("search_input_id"));
//		System.out.println(req.getParameter("search_select_id"));
		
		String searchTypeStr = req.getParameter("search_select_id");
		String searchString = req.getParameter("search_input_id");
		
		if(searchTypeStr.equals("제목")) {
			String searchType = "notice_title";
			noticeService.searchListPaging(model, searchType, searchString, vo, nowPage, pagePostCnt);
		} else if(searchTypeStr.equals("내용")) {
			String searchType = "notice_content";
			noticeService.searchListPaging(model, searchType, searchString, vo, nowPage, pagePostCnt);
		} else {
			String searchType = "all";
			noticeService.searchListPaging(model, searchType, searchString, vo, nowPage, pagePostCnt);
		}
		
//		noticeService.search(model, searchType, searchString);
		
		return "/userViews/notice/notice_list";
	}
	
	
	@GetMapping("/notice_detail")
	public String notice_detail(int notice_id, Model model) {
		
		noticeService.getNoticeDTO(notice_id, model);
		
		return "/userViews/notice/notice_detail";
	}

}
