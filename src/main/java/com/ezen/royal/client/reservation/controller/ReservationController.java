package com.ezen.royal.client.reservation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/palace")
public class ReservationController {
	

	@GetMapping("/reservation") // 해설예약
	public String reservation() {
		return "/userViews/reservation/reservation";
	}
	
}
