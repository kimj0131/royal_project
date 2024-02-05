package com.ezen.royal.manager.dto;

import lombok.Data;

@Data
public class EventRoundManageDTO {

	private Integer round_id;
	private Integer event_id;
	private Integer round_num;
	private String round_time;
	// 회차별 수용인원
	private Integer round_capacity;
}
