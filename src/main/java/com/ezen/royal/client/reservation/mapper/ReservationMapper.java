package com.ezen.royal.client.reservation.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ezen.royal.client.reservation.dto.ReservationDTO;
import com.ezen.royal.client.reservation.dto.SelectedCommentaryDTO;

public interface ReservationMapper {

	List<SelectedCommentaryDTO> getSelectedCommentaryDTOList(@Param("event_id") int event_id,
			@Param("date") String date);
	
	
	// 예약 등록
	int regReservation(ReservationDTO dto);
	
	 List<SelectedCommentaryDTO>findCommentaryDTOList(@Param("event_id") int event_id);
	
}
