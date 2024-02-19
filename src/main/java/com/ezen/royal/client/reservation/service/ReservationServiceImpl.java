package com.ezen.royal.client.reservation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.royal.client.reservation.dto.ReservationDTO;
import com.ezen.royal.client.reservation.dto.SelectedCommentaryDTO;
import com.ezen.royal.client.reservation.mapper.ReservationMapper;

@Service
public class ReservationServiceImpl implements ReservationService{
	
	@Autowired
	ReservationMapper reservationMapper;
	
	
//	@Override
//	public List<SelectedCommentaryDTO> getCommentaryDetails(Integer event_id) {
//		return reservationMapper.findCommentaryDTOList(event_id);
//	}
	
	@Override
	public List<SelectedCommentaryDTO> getCommentaryDetails(int royal_id, String date) {
		return reservationMapper.findCommentaryDTOList(royal_id, date);
	}

	@Override
	public int regReservation(ReservationDTO dto) {
		return reservationMapper.regReservation(dto);
	}

	
}
