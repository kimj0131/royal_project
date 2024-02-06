package com.ezen.royal.manager.service;

import org.springframework.ui.Model;

public interface ReservationManageService {
	
	// 예약내역 목록 가져오기
	void getResvList(Model model);
	// 예약내역 하나 가져오기
	void getResvDetail(Model model, int resv_id);
	
	// 예약내역 삭제하기
	int deleteResv(int delete_id);
	
}
