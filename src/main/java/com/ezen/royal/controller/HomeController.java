package com.ezen.royal.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class HomeController {
	
	
	@RequestMapping(value = "/")
	public String home(Locale locale, Model model) {
		log.info("Welcome home! The client locale is.");
		
		return "home";
	}
	
	@GetMapping("/test/jun")
	public void jun() {
		
	}
	@GetMapping("/test/joe")
	public void joe() {
		
	}
	@GetMapping("/test/bang")
	public void bang() {
		
	}
	@GetMapping("/test/sol")
	public void sol() {
		
	}
	@GetMapping("/test/bin")
	public void bin() {
		
	}
}
