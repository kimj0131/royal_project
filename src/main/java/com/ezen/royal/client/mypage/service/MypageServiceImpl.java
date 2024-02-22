package com.ezen.royal.client.mypage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ezen.royal.client.mypage.dto.MypageDTO;
import com.ezen.royal.client.mypage.mapper.MypageMapper;

@Service
public class MypageServiceImpl implements MypageService{

	@Autowired
	MypageMapper mypageMapper;
	
	//기본정보 
	@Override
	public void getSelectedmypageDTO(Model model, String social_id) {
		 
		model.addAttribute("mypageDTO", mypageMapper.getSelectedmypageDTO(social_id));
		
	}
	
	// 예약내역
	@Override
	public List<MypageDTO> getMyreservList(String social_id) {
		List<MypageDTO> mypageDTOList = mypageMapper.reservList(social_id);
		
		return mypageDTOList;
	}

	@Override
	public List<MypageDTO> getMyqnaList(String social_id) {
		List<MypageDTO> mypageQnAList = mypageMapper.qnaList(social_id);
		
		return mypageQnAList;
	}

	@Override
	public boolean deleteReservation(String reservationNum) {
		boolean result = mypageMapper.deleteReservation(reservationNum);
		if(result ==true) {
			return true;
		}else {
			
			return false;
		}
	}

	
	

	
}
