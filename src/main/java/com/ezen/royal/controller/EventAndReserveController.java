package com.ezen.royal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/palace")
public class EventAndReserveController {
	
	@GetMapping("/event")
	public String event() {
		return "/userViews/reservation/event";
	}
	
	@GetMapping("/commentary")
	public String commentary() {
		return "/userViews/reservation/commentary";
	}
	
	@GetMapping("/reservation")
	public String reservation() {
		return "/userViews/reservation/reservation";
	}

}
