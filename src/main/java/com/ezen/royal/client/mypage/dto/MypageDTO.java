package com.ezen.royal.client.mypage.dto;

import java.util.Date;

import lombok.Data;

@Data
public class MypageDTO {

	//마이페이지 내정보
	private Integer memberId;
	private String memberType;
	private String memberName;
	private String memberEmail;
	private String socialId;
	
	// 예약정보
	private String resvNum;
	private String resvPeople;
	private Date resvDate;
	
	private String eventName; 
	 
}
