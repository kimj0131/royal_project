package com.ezen.royal.manager.dto;

import lombok.Data;

@Data
public class FAQManageDTO {

	private Integer faq_id;		// FAQ ID
	private Integer royal_id;	// FAQ 카테고리
	private String faq_title;	// FAQ 제목
	private String faq_result;	// FAQ 내용
	
}
