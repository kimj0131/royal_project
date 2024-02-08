package com.ezen.royal.client.palace.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/palace")
@PropertySource("classpath:config/kakao.properties") // kakao.properties 사용하기 위한 어노테이션
public class GuideViewController {
	
	@Autowired
	Environment env; // kakao.properties 사용하기 위한 객체
	
	@GetMapping("/viewing_time") // 관람시간
	public String viewing_time() {
		return "/userViews/royal_intro/guideToViewing/viewing_time";
	}
	
	@GetMapping("/fare") // 관람요금
	public String fare() {
		return "/userViews/royal_intro/guideToViewing/fare";
	}
	
	@GetMapping("/roadmap") // 오시는길
	public String roadmap(HttpServletRequest request, Model model) {
		String apiKey = env.getProperty("kakao.appkey");
		String palace = request.getParameter("palace");
	
		model.addAttribute("apiKey", apiKey); // 카카오지도 appkey
		model.addAttribute("palace", palace);
		
		request.setAttribute("palace", palace);
		
		return "/userViews/royal_intro/guideToViewing/roadmap";
	}
	
}
