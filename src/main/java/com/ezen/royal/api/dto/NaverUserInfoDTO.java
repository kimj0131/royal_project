package com.ezen.royal.api.dto;

import lombok.Data;

@Data
public class NaverUserInfoDTO {

	private String access_token;
	private String identifier;
	private String user_name;
	private String user_email;
}
