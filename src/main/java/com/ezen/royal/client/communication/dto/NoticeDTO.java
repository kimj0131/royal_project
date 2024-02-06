package com.ezen.royal.client.communication.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class NoticeDTO {
	private Integer notice_id;
	private Integer royal_id;
	private String notice_title;
	private String notice_content;
	private Date notice_date;

}
