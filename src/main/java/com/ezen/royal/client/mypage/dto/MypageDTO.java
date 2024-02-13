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
	private String resv_num;
	private String resv_people;
	private Date resv_date;
	private String event_name;
	
	//qna
	private Integer qna_id;
	private String qna_title;
	private String qna_content;
	private Date qna_date;
	private String qna_result;
	 
}
