package com.ezen.royal.manager.service;

import org.springframework.ui.Model;

public interface ReservationManageService {
	
	// 예약내역 목록 가져오기
	/**
	 * * 예약내역 전체 목록을 attribute에 list로 싣는다 <br>
	 * ※ attribute name = resvList
	 */
	void getResvList(Model model);
	// 예약내역 하나 가져오기
	/**
	 * * 예약내역 하나를 attribute에 싣는다 <br>
	 * ※ attribute name = resv
	 */
	void getResvDetail(Model model, int resv_id);
	
	// 예약내역 삭제하기
	/**
	 * * 삭제할 resv_id를 전달받아 삭제한다 <br>
	 * ※ 성공시 1을 반환한다
	 */
	int deleteResv(int delete_id);
	
}
