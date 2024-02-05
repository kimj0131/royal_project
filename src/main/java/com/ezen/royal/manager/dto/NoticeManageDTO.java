package com.ezen.royal.manager.dto;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeManageDTO {

	private Integer notice_id;
	// private String royal_name; // <- ?????? id가아님????
	private Integer royal_id;
	private String notice_title;
	private String notice_content;
	private Date notice_date;
	
}
