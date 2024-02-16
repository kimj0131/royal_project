package com.ezen.royal.client.reservation.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezen.royal.client.reservation.dto.SelectedCommentaryDTO;
import com.ezen.royal.client.reservation.service.ReservationService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/palace")
public class ReservationController {

	@Autowired
	private ReservationService reservationService;

	@GetMapping("/reservation") // 해설예약페이지
	public String reservation() {
		return "/userViews/reservation/reservation";
	}


	@GetMapping("/getEventList") // 궁이름 클릭시 해당 서비스 반환
	@ResponseBody
	public List<SelectedCommentaryDTO> getEventList(@RequestParam("event_id") Integer event_id){
		
		log.info("Requested event_id: " + event_id);

		return reservationService.getCommentaryDetails(event_id);
	}

	
}
