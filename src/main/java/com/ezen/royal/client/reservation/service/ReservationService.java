package com.ezen.royal.client.reservation.service;

import java.util.List;

import org.springframework.ui.Model;

import com.ezen.royal.client.reservation.dto.ReservationDTO;
import com.ezen.royal.client.reservation.dto.SelectedCommentaryDTO;

public interface ReservationService {

	// 예약 페이지 구성 DTO list
	void getSelectedCommentaryDTOList(Model model, int event_id, String date);

	List<SelectedCommentaryDTO>getCommentaryDetails(Integer event_id);
	
	// 유저정보확인(session.login_user(SOCIAL_ID를 통해 member_id를 도출))
	// 예약 등록
	int regReservation(ReservationDTO dto);

	
	
	
}
