package com.ezen.royal.client.mypage.dto;

import java.util.Date;

import lombok.Data;

@Data
public class MypageDTO {

	//마이페이지 내정보
	private Integer member_id;
	private String member_type;
	private String member_name;
	private String member_email;
	private String social_id;
	
	// 예약정보
	private String resvNum;
	private String resvPeople;
	private Date resvDate;
	
	private String eventName; 
	 
}
