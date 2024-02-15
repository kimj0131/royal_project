package com.ezen.royal.client.reservation.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ezen.royal.client.reservation.dto.ReservationDTO;
import com.ezen.royal.client.reservation.mapper.ReservationMapper;

@Service
public class ReservationServiceImpl implements ReservationService{
	
	@Autowired
	ReservationMapper reservationMapper;
	
	@Override
	public void getSelectedCommentaryDTOList(Model model, int event_id, String date) {
		model.addAttribute("", reservationMapper.getSelectedCommentaryDTOList(event_id, date));
	}	
	
	@Override
	public int regReservation(ReservationDTO dto) {
		return reservationMapper.regReservation(dto);
	}
	
}
