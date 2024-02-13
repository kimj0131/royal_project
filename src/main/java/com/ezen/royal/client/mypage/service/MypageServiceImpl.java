package com.ezen.royal.client.mypage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ezen.royal.client.mypage.dto.MypageDTO;
import com.ezen.royal.client.mypage.mapper.MypageMapper;
import com.ezen.royal.client.palace.dto.InnerDTO;

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
	public List<MypageDTO> getMyQna(String social_id) {
		List<MypageDTO> myQnaList = mypageMapper.qnaList(social_id);
		return myQnaList;
	}

}
