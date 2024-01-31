package com.ezen.royal.client.event.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/palace")
public class EventAndReserveController {
	
	@GetMapping("/event") // 행사
	public String event() {
		return "/userViews/reservation/event";
	}
	
	
	@GetMapping("/reservation") // 통합예약
	public String reservation() {
		return "/userViews/reservation/reservation";
	}

}
