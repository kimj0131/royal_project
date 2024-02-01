package com.ezen.royal.client.palace.test_inner.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.royal.client.palace.test_inner.service.TestRoyalInnerService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/TestRoyalInner")
public class TestRoyalInnerController {
	
	@Autowired
	TestRoyalInnerService testRoyalInnerService;
	
	@GetMapping("/index")
	public String index() {
		return "/userViews/test_inner/index";	
	}
	
	@GetMapping("/inner")
	public String inner(HttpServletRequest req) {
		
		String palace = req.getParameter("palace");
		String inner = req.getParameter("inner");
		
		
		// xx궁 내부 건축물 눌렀을 때 기본 내부건축물 설정 과정
		if (inner == null || inner.equals("")) {
			if (palace.equals("경복궁"))
				inner = "광화문";
			else if (palace.equals("창덕궁"))
				inner = "돈화문";
			else if (palace.equals("창경궁"))
				inner = "홍화문";
			else if (palace.equals("덕수궁"))
				inner = "대한문";
			else if (palace.equals("종묘"))
				inner = "하마비";
		}
		//
		System.out.println("palace: " + palace);
		System.out.println("inner: " + inner);

		req.setAttribute("palaceName", palace);
		req.setAttribute("innerNameList", testRoyalInnerService.getInnerNameList(palace));
		req.setAttribute("innerDTO", testRoyalInnerService.getSelectedInnerDTO(inner));
		
		return "/userViews/test_inner/inner_detail";
	}
}
