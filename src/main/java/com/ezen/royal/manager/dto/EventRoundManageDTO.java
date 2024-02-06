package com.ezen.royal.manager.dto;

import lombok.Data;

@Data
public class EventRoundManageDTO {

	private Integer round_id;		// 행사 회차 ID
	private Integer event_id;		// 연관된 이벤트 ID
	private Integer round_num;		// 해당 회차의 번호
	private String round_time;		// 해당 회차의 시작시간
	private Integer round_capacity;	// 해당 회차의 수용인원
}
