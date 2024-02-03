package com.ezen.royal.client.palace.controller;

import java.util.List;
import java.util.stream.Collectors; 

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.royal.client.palace.dto.InnerDTO;
import com.ezen.royal.client.palace.service.RoyalInnerService;

@Controller
@RequestMapping("/palace")
public class RoyalInnerController {

	@Autowired
	private RoyalInnerService innerService;

    @GetMapping("/royalInner")
    public String royalInnerPage(HttpServletRequest req, Model model) {
        // "royalName" 파라미터를 통해 선택한 궁 이름 가져옴
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
		req.setAttribute("palaceName", palace);
		req.setAttribute("innerNameList", innerService.getInnerNameList(palace));
		req.setAttribute("innerDTO", innerService.getSelectedInnerDTO(inner));
		
        return "/userViews/royal_intro/royal_Inner_view";
    }
}
