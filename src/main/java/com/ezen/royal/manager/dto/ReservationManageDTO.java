package com.ezen.royal.manager.dto;

import java.util.Date;

import lombok.Data;

@Data
public class ReservationManageDTO {
	
	private Integer resv_id;		// 예약 ID
	private Integer evetn_id;		// 연관된 이벤트 ID
	private Integer member_id;		// 연관된 고객(member) ID
	private String resv_num;		// 예약번호
	private Date resv_date;			// 예약 날짜
	private Integer resv_people;	// 예약 인원
	
}
