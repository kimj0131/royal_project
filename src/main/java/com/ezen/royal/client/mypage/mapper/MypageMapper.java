package com.ezen.royal.client.mypage.mapper;

import java.util.List;

import com.ezen.royal.client.mypage.dto.MypageDTO;

public interface MypageMapper {

	
	

	MypageDTO getSelectedmypageDTO(String social_id);

	List<MypageDTO> reservList(String social_id);

	List<MypageDTO> qnaList(String social_id);

}
