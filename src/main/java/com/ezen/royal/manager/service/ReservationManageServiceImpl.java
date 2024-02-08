package com.ezen.royal.manager.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ezen.royal.manager.mapper.ReservationManageMapper;

@Service
public class ReservationManageServiceImpl implements ReservationManageService{

	@Autowired
	ReservationManageMapper reservationManageMapper;
	
	// 예약내역 전체 리스트
	@Override
	public void getResvList(Model model) {
		model.addAttribute("resvList", reservationManageMapper.getResvList());
	}

	// 예약내역 하나 가져오기
	@Override
	public void getResvDetail(Model model, int resv_id) {
		model.addAttribute("resv", reservationManageMapper.getResvDetail(resv_id));
	}

	// 예약내역 삭제하기
	@Override
	public int deleteResv(int delete_id) {
		return reservationManageMapper.deleteResv(delete_id);
	}

}
