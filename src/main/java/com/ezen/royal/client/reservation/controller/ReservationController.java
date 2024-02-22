package com.ezen.royal.client.reservation.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezen.royal.client.reservation.dto.ReservationDTO;
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
	public String reservation(Model model, HttpServletRequest request) {
		// 소셜아이디를 통해 model객체에 로그인한 회원의 email 저장해 놓기
		String social_id = (String) request.getSession().getAttribute("login_user");
		reservationService.getMemberEmail(model, social_id);
		return "/userViews/reservation/reservation";
	}

	@ResponseBody
	@GetMapping(value ="/getEventList", produces = MediaType.APPLICATION_JSON_VALUE) // 궁이름 클릭시 해당 서비스 반환
	public List<SelectedCommentaryDTO> getEventList(@RequestParam("royal_id") int royal_id, @RequestParam("date")String date){
		
		// SelectedCommentaryDTO 리스트를 받아온다
		List<SelectedCommentaryDTO> events = reservationService.getCommentaryDetails(royal_id, date);
		
		if (events.isEmpty()) {
	        // 빈 객체 반환
	        return Collections.emptyList();
	    } else {
	        return events;
	    }
	}
	
	@PostMapping("/reservation/regResv") // 해설예약페이지
	public String regReservation(Model model, HttpServletRequest request) {
		
		// 현재 로그인한 회원의 social_id
		String social_id = (String) request.getSession().getAttribute("login_user");
		
		// jsp에서 넘겨 받는 파라미터를 각 변수에 저장 //
		String royal_id = request.getParameter("royal_id");
		String event_id = request.getParameter("event_id");
		String resv_people = request.getParameter("resv_people");
		String resv_eventdate = request.getParameter("resv_eventdate");
		String round_num = request.getParameter("round_num");
		String event_name = request.getParameter("event_name");
		String round_time = request.getParameter("round_time");
		
		
		// jsp에서 넘겨 받는 파라미터를 dto에 담는 과정 //
		ReservationDTO resvDTO = new ReservationDTO();
		resvDTO.setRoyal_id(Integer.parseInt(royal_id));
		resvDTO.setEvent_id(Integer.parseInt(event_id));
		resvDTO.setResv_people(Integer.parseInt(resv_people));
		// 예약한 행사 날짜를 Date타입으로 변환하기 
		SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
		Date formatted_resv_eventdate = null;
		try {
			formatted_resv_eventdate = formatter.parse(resv_eventdate);
			resvDTO.setResv_eventdate(formatted_resv_eventdate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		resvDTO.setRound_num(Integer.parseInt(round_num));
		resvDTO.setMember_id(reservationService.getMemberId(social_id));
		resvDTO.setResv_num(formatted_resv_eventdate.getTime() + ((int)(Math.random() * 999999999)) + ""); // (예약한 행사 날짜 EpochTime) + 난수
		
		// DB에 insert하는 서비스 호출
		reservationService.regReservation(resvDTO);
		
		// DB에 insert 후 이메일 발송 
		reservationService.sendResvEmail(
				resvDTO.getResv_num(), 
				event_name, 
				new SimpleDateFormat("yyyy년 MM월 dd일").format(formatted_resv_eventdate), 
				resvDTO.getRound_num(), 
				round_time, 
				resvDTO.getResv_people(), 
				social_id);

		return "redirect:/palace/reservation";
	}
}
