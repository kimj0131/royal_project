package com.ezen.royal.client.palace.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.royal.client.palace.service.RoyalInnerService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/palace")
public class RoyalInnerController {
	

	@Autowired
	RoyalInnerService royalInnerService;
	
	@GetMapping("/royalInner/royalId")
	public String getRoyalDetails(@PathVariable Integer royalId, Model model) {
		return null;
		
	}
	
	/*
	@GetMapping("/royalInner") // 내부 건축물 
	public String inner() {
		return "/userViews/royal_intro/royal_Inner_view";
	}
	*/

}
