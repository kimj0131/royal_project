package com.ezen.royal.client.reservation.dto;

import lombok.Data;

@Data
public class MemberInfoDTO {
	private Integer member_id;		// 회원 id
	private String socail_id;		// 로그인한 플랫폼에서 제공하는 id
	private String member_name;		// 회원 이름or닉네임
	private String member_email;	// 회원 email
	private String member_type;		// 로그인에 사용한 플랫폼
}
