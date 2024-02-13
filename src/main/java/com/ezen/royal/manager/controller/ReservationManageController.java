package com.ezen.royal.manager.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.royal.manager.service.ReservationManageService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/manage/main/reservation")
public class ReservationManageController {
	
	@Autowired
	ReservationManageService reservationManageService;
	
	
	@GetMapping("/form/*")
	public String manage_reservation_form(HttpServletRequest request, Model model) {
		String uri = request.getRequestURI();

		if (uri.endsWith("delete")) {
			reservationManageService.getResvList(model);
			return "managerViews/main_views/reservation/delete";
		}
		else
			return "";
	}
	
	@PostMapping("/post/*")
	public String manage_reservation_post(HttpServletRequest request) {
		String uri = request.getRequestURI();

		if (uri.endsWith("delete")) {
			//resv_id
			reservationManageService.deleteResv(Integer.parseInt(request.getParameter("resv_id")));
			return "redirect:/manage/main/reservation/form/delete";
		} else {
			return "";
		}
	}
}
