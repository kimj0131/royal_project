package com.ezen.royal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;


/*
 * 컨트롤러 
 1. 관리자뷰 컨트롤러 - 로그인, 요약 , 공지사항, qna, 예약관리 
 2. 유저뷰 컨트롤러 
 	- 메인 ( 커버페이지, 홈페이지, 로그인, 프로젝트팀 소개 ) 
 	- 행사,해설 보이는거? +  예약 컨트롤러 
 	- 궁 메인 + 히스토리 
 	- 궁 이너컨트롤러 ( DB에서 가져오는거니까 ) 
 	- 관람 안내
 */

@Log4j
@Controller
@RequestMapping("/main")
public class RoyalMainController {

	@GetMapping("/")
	public String coverPage() {
		return "/userViews/main/coverPage";
	}


	@GetMapping("/home")
	public String main() {
		return "/userViews/main/main";
	}
	
}
