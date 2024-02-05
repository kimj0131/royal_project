package com.ezen.royal.manager.dto;

import java.util.Date;

import lombok.Data;

@Data
public class QNAManageDTO {
	
	private Integer qna_id;
	private Integer member_id;
	private Integer royal_id;
	private String qna_title;
	private String qna_content;
	private String qna_result;
	private Date qna_date;
	
}
