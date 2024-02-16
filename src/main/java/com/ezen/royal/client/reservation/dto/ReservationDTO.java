package com.ezen.royal.client.reservation.dto;

import java.util.Date;

import lombok.Data;

@Data
public class ReservationDTO {

	private Integer resv_id;		// 예약 ID
	private Integer royal_id;		// 궁id
	private Integer event_id;		// 연관된 이벤트 ID
	private Integer member_id;		// 연관된 고객(member) ID
	private String resv_num;		// 예약번호
	private Date resv_date;			// 예약을 수행한 날짜
	private Integer resv_people;	// 예약 인원
	private Date resv_eventdate; 	// 예약한 이벤트 날짜
	private Integer round_num;		// event 회차
}
