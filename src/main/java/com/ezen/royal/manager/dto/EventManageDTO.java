package com.ezen.royal.manager.dto;

import java.util.Date;

import lombok.Data;

@Data
public class EventManageDTO {
	
	private Integer event_id;		// 행사 ID
	private Integer royal_id;		// 연관된 궁 ID
	private String event_type;		// event 타입 (해설 : commentary, 행사 : event)
	private String event_name;		// 행사명
	private String event_location;	// 행사 장소
	private Integer event_rounds;	// 행사의 하루 시행 회차(ex> 4회차)
	private Date start_date;		// 행사 시작 날짜 (해설의 경우 당일 시작)
	private Date end_date;			// 행사 끝 날짜 (해설의 경우 당일 끝)
	private String event_link;		// 행사 안내 페이지주소
	private String event_imgpath;	// 행사 안내 포스터, 이미지 등등 경로
	private Character reservable;	// 예약 가능 여부 : Y or N

}
