package com.ezen.royal.manager.dto;

import lombok.Data;

@Data
public class FAQManageDTO {

	private Integer faq_id;
	// FAQ 카테고리
	private Integer royal_id;
	private String faq_title;
	private String faq_result;
	
}
