package com.ezen.royal.manager.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/YWRtaW5wYWdl/reservation")
public class ReservationManageController {
	// [예약] 삭제
	@GetMapping("/form/*")
	public String manage_reservation_delet(HttpServletRequest request) {
		String uri = request.getRequestURI();

		if (uri.endsWith("delete"))
			return "managerViews/main_views/reservation/delete";
		else
			return "";
	}
}
