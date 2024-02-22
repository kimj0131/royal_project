package com.ezen.royal.client.reservation.service;

import java.util.List;

import org.springframework.ui.Model;

import com.ezen.royal.client.reservation.dto.ReservationDTO;
import com.ezen.royal.client.reservation.dto.SelectedCommentaryDTO;

public interface ReservationService {

    // 해설 행사회차 가져오기
	// List<SelectedCommentaryDTO>getCommentaryDetails(Integer event_id);
	
	// royal_id와 date를 받고 해설 회차리스트를 리턴한다
	List<SelectedCommentaryDTO>getCommentaryDetails(int royal_id, String date);
	
	// 유저정보확인(session.login_user(SOCIAL_ID를 통해 member_id를 도출))
	// 예약 등록
	int regReservation(ReservationDTO dto);

	// 로그인한 회원의 social_id를 통해 member_id 반환
	int getMemberId(String social_id);
	
	// 로그인한 회원의 social_id를 통해 member_email을 model객체에 싣기
	void getMemberEmail(Model model, String social_id);
	
	// 예약이 완료된 회원의 이메일로 예약정보 메일 발송
	void sendResvEmail(String reservationNum, String eventName, 
			String eventDate, int eventRound, String eventTime, int reservPeople, String social_id);
}
