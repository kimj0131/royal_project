package com.ezen.royal.client.reservation.service;

import org.springframework.ui.Model;

import com.ezen.royal.client.reservation.dto.ReservationDTO;

public interface ReservationService {

	// 예약 페이지 구성 DTO list
	void getSelectedCommentaryDTOList(Model model, int event_id, String date);
	
	// 유저정보확인(session.login_user(SOCIAL_ID를 통해 member_id를 도출))
	// 예약 등록
	int regReservation(ReservationDTO dto);
	
}
