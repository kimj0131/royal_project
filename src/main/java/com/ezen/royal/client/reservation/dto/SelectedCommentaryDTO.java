package com.ezen.royal.client.reservation.dto;

import lombok.Data;

@Data
public class SelectedCommentaryDTO {

	private Integer event_id; 		// event 번호
	private Integer round_num;		// 회차 번호
	private String round_time;		// 해당 회차의 시작시간
	
	private Integer curr_resv_num; 	// 현재 예약 인원
	
	private Integer round_capacity;	// 해당 회차의 수용인원
	
}
