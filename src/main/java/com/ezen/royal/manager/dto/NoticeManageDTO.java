package com.ezen.royal.manager.dto;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeManageDTO {

	private Integer notice_id;		// 공지사항 ID
	private Integer royal_id;		// 연관된 ID
	private String notice_title;	// 공지사항 제목
	private String notice_content;	// 공지사항 내용
	private Date notice_date;		// 공지사항 작성일
	
}
