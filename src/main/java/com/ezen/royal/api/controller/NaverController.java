package com.ezen.royal.api.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.royal.api.dto.NaverUserInfoDTO;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class NaverController {
	
	@GetMapping("/user/login/naver")
	public String naver_login() {
		return "test/naver_login_test";
	}
	
	@PostMapping("/user/login/naver")
	public ResponseEntity<NaverUserInfoDTO> naver_login_compl(@RequestBody NaverUserInfoDTO dto) {
		
		log.info(dto);
		
		return ResponseEntity.status(HttpStatus.OK).contentType(MediaType.APPLICATION_JSON).body(dto);
	}
	
	@RequestMapping("/user/login/naver/callback")
	public String naver_callback() {
		return "test/naver_callback_test";
	}
	
	

}
