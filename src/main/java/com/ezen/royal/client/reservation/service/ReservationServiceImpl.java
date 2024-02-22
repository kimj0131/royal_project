package com.ezen.royal.client.reservation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ezen.royal.client.reservation.dto.MemberInfoDTO;
import com.ezen.royal.client.reservation.dto.ReservationDTO;
import com.ezen.royal.client.reservation.dto.SelectedCommentaryDTO;
import com.ezen.royal.client.reservation.mapper.ReservationMapper;
import com.ezen.royal.util.EmailSender;

@Service
@PropertySource("classpath:config/gmail.properties")
public class ReservationServiceImpl implements ReservationService{
	
	@Autowired
	ReservationMapper reservationMapper;
	
	@Autowired
	Environment env;
	
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

	@Override
	public int getMemberId(String social_id) {
		return reservationMapper.getMemberInfoDTO(social_id).getMember_id();
	}
	
	@Override
	public void getMemberEmail(Model model, String social_id) {
		model.addAttribute("memberEmail", reservationMapper.getMemberInfoDTO(social_id).getMember_email());
	}
	
	@Override
	public void sendResvEmail(String reservationNum, String eventName, 
			String eventDate, int eventRound, String eventTime, int reservPeople, String social_id) {
	
		MemberInfoDTO memberInfoDTO = reservationMapper.getMemberInfoDTO(social_id);
		String member_name = memberInfoDTO.getMember_name();
		String member_email = memberInfoDTO.getMember_email();
		
		try {
			EmailSender.emailSender(env, member_name, member_email, reservationNum,
					eventName, eventDate, eventRound, eventTime, reservPeople);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
