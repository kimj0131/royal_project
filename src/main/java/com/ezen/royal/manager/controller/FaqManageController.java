package com.ezen.royal.manager.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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

import com.ezen.royal.client.communication.dto.FaqDTO;
import com.ezen.royal.manager.dto.EventManageDTO;
import com.ezen.royal.manager.dto.EventRoundManageDTO;
import com.ezen.royal.manager.dto.FAQManageDTO;
import com.ezen.royal.manager.service.FaqManageService;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/manage/main/faq")
public class FaqManageController {

	@Autowired
	FaqManageService faqManageService;

	
	@GetMapping("/form/*")
	public String manage_event_form(HttpServletRequest request, Model model) {

		// 행사 테이블 리스트 실어주기
		faqManageService.getFAQList(model);

		String uri = request.getRequestURI();

		
		if (uri.endsWith("list")) {
			return "managerViews/main_views/faq/list";
		} else if (uri.endsWith("insert")) {
			return "managerViews/main_views/faq/insert";
		} else if (uri.endsWith("update")) {
			return "managerViews/main_views/faq/update";
		} else if (uri.endsWith("delete")) {
			return "managerViews/main_views/faq/delete";
		} else {
			return "";
		}
	}

	@PostMapping("/post/*")
	public String manage_event_post(HttpServletRequest request) {
		String uri = request.getRequestURI();

		if (uri.endsWith("insert")) {
			String royal_id = request.getParameter("royal_id");
			String faq_title = request.getParameter("faq_title");
			String faq_result = request.getParameter("faq_result");
			
			FAQManageDTO dto = new FAQManageDTO();
			dto.setRoyal_id(Integer.parseInt(royal_id));
			dto.setFaq_title(faq_title);
			dto.setFaq_result(faq_result);
			
			faqManageService.insertFAQ(dto);
			
			return "redirect:/manage/main/faq/form/insert";
			
		} else if (uri.endsWith("update")) {
			
			int modified_id = Integer.parseInt(request.getParameter("selected_faq"));
			String royal_id = request.getParameter("royal_id");
			String faq_title = request.getParameter("faq_title");
			String faq_result = request.getParameter("faq_result");
			
			FAQManageDTO dto = new FAQManageDTO();
			dto.setFaq_id(modified_id);
			dto.setRoyal_id(Integer.parseInt(royal_id));
			dto.setFaq_title(faq_title);
			dto.setFaq_result(faq_result);
			
			faqManageService.updateFAQ(dto);
			
			return "redirect:/manage/main/faq/form/update";
		} else if (uri.endsWith("delete")) {
			System.out.println(request.getParameter("faq_id"));
			faqManageService.deleteFAQ(Integer.parseInt(request.getParameter("faq_id")));
			return "redirect:/manage/main/faq/form/delete";
		} else {
			return "";
		}
	}
	
	
	@ResponseBody
	@GetMapping("/ajax/{faq_id}")
	public String manage_event_ajax_get(@PathVariable("faq_id") Integer faq_id, HttpServletRequest request, Model model) {

		faqManageService.getFAQResult(model, faq_id);

		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> data = new HashMap<>();
		String result = null;

		data.put("FAQ", model.getAttribute("FAQ"));

		try {
			result = mapper.writeValueAsString(data);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
}
