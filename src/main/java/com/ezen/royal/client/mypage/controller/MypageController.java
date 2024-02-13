package com.ezen.royal.client.mypage.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.royal.api.service.KakaoService;
import com.ezen.royal.client.mypage.dto.MypageDTO;
import com.ezen.royal.client.mypage.service.MypageService;
import com.ezen.royal.client.palace.dto.InnerDTO;

import lombok.extern.log4j.Log4j;

@Controller

@Log4j
@RequestMapping("/mypage")
public class MypageController {
	@Autowired
	private MypageService mypageService;
	@Autowired
	KakaoService kakaoService;

	@Autowired
	Environment env;

	@GetMapping("/myPageView") // 마이페이지 뷰
	public String myPageView(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();

		String social_id = (String) session.getAttribute("login_user");
		System.out.println(social_id);
		if (social_id.equals("") || social_id == null) {
			return "redirect:/main/";
		} else {

			 mypageService.getSelectedmypageDTO(model, social_id);
			 
			 req.setAttribute("reservList", mypageService.getMyreservList(social_id));
			 req.setAttribute("qnaList", mypageService.getMyqnaList(social_id));
			 
			 
			 
			 return "/userViews/mypage/mypage";
		}
	}

	//예약 취소
	@PostMapping("/cancelResv")
	public int cancleResv() {

		return 0;

	}
}
