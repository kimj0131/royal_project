package com.ezen.royal.client.reservation.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ezen.royal.client.reservation.dto.ReservationDTO;
import com.ezen.royal.client.reservation.dto.SelectedCommentaryDTO;

public interface ReservationMapper {
	
	
	// royal_id와 date를 받고 해설 회차리스트를 리턴한다
	// List<SelectedCommentaryDTO> findCommentaryDTOList(@Param("event_id") int event_id);
	List<SelectedCommentaryDTO> findCommentaryDTOList(@Param("royal_id") int royal_id, @Param("date") String date);
	
	// 예약 등록
	int regReservation(ReservationDTO dto);
	
	
}
