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
	
	// 작업성공을 확인하는 변수
	private boolean processingResult = false;
	private void checkingProcess(HttpServletRequest request, String alertType) {
		// 작업성공여부 확인 후 데이터를 싣는다
		if (processingResult == true) {
			request.setAttribute("alertType", alertType);
			processingResult = false;
		}
	}
	
	@GetMapping("/form/*")
	public String manage_reservation_form(HttpServletRequest request, Model model) {
		String uri = request.getRequestURI();

		if (uri.endsWith("list")) {
			reservationManageService.getResvList(model);
			return "managerViews/main_views/reservation/list";
		} else if (uri.endsWith("delete")) {
			reservationManageService.getResvList(model);
			checkingProcess(request, "예약취소");
			return "managerViews/main_views/reservation/delete";
		} else
			return "";
	}
	
	@PostMapping("/post/*")
	public String manage_reservation_post(HttpServletRequest request) {
		String uri = request.getRequestURI();

		if (uri.endsWith("delete")) {
			int result = reservationManageService.deleteResv(Integer.parseInt(request.getParameter("resv_id")));
			// 작업 성공 여부 확인
			if(result > 0) {
				processingResult = true;
			}
			return "redirect:/manage/main/reservation/form/delete";
		} else {
			return "";
		}
	}
}
