package com.ezen.royal.manager.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import com.ezen.royal.manager.mapper.ReservationManageMapper;

public class ReservationManageServiceImpl implements ReservationManageService{

	@Autowired
	ReservationManageMapper reservationManageMapper;
	
	// 예약내역 전체 리스트
	/**
	 * * 예약내역 전체 목록을 attribute에 list로 싣는다 <br>
	 * ※ attribute name = resvList
	 */
	@Override
	public void getResvList(Model model) {
		model.addAttribute("resvList", reservationManageMapper.getResvList());
	}

	// 예약내역 하나 가져오기
	/**
	 * * 예약내역 하나를 attribute에 싣는다 <br>
	 * ※ attribute name = resv
	 */
	@Override
	public void getResvDetail(Model model, int resv_id) {
		model.addAttribute("resv", reservationManageMapper.getResvDetail(resv_id));
	}

	// 예약내역 삭제하기
	/**
	 * * 삭제할 resv_id를 전달받아 삭제한다 <br>
	 * ※ 성공시 1을 반환한다
	 */
	@Override
	public int deleteResv(int delete_id) {
		return reservationManageMapper.deleteResv(delete_id);
	}

}
