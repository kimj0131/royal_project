package com.ezen.royal.client.mypage.service;

import java.util.List;

import org.springframework.ui.Model;

import com.ezen.royal.client.mypage.dto.MypageDTO;

public interface MypageService {

	void getSelectedmypageDTO(Model model, String social_id);

	List<MypageDTO> getMyreservList(String social_id);

	List<MypageDTO> getMyQna(String social_id);
	
}
