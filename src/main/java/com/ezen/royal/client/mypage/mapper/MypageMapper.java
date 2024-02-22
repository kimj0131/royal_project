package com.ezen.royal.client.mypage.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;

import com.ezen.royal.client.mypage.dto.MypageDTO;


public interface MypageMapper {

	
	

	MypageDTO getSelectedmypageDTO(String social_id);

	List<MypageDTO> reservList(String social_id);

	List<MypageDTO> qnaList(String social_id);

	
	 @Delete("DELETE FROM reservation WHERE resv_num=#{reservationNum}")
	    boolean deleteReservation(String reservationNum);
	
}
