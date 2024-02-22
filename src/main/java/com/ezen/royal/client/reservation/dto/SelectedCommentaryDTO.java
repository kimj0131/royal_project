package com.ezen.royal.client.reservation.dto;

import lombok.Data;

@Data
public class SelectedCommentaryDTO {
	private Integer event_id; 		// event 번호 FK
	private String event_name;		// event 이름
	private Integer round_id;		// 행사 회차 번호 PK
	private Integer round_num;		// 회차 번호
	private String round_time;		// 해당 회차의 시작시간
	
	private Integer curr_resv_people; 	// 현재 예약 인원
	
	private Integer round_capacity;	// 해당 회차의 수용인원
	
	//(예약인원 / 수용인원) 예약하기/예약마감???
	
}
