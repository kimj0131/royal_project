package com.ezen.royal.api.dto;

import lombok.Data;

@Data
public class MemberDTO {	
	private Integer member_id;
	private String social_id;
	private String member_name;
	private String member_email;
	private String member_type;
}
