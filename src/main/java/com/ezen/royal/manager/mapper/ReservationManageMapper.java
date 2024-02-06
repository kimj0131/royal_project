package com.ezen.royal.manager.mapper;

import java.util.List;

import com.ezen.royal.manager.dto.ReservationManageDTO;

public interface ReservationManageMapper {

	/////////////////////////
	// Reservation List
	List<ReservationManageDTO> getResvList();
	
	// Reservation Detail
	ReservationManageDTO getResvDetail(int resv_id);
	
	// Reservation Delete
	int deleteResv(int delete_id);

}
