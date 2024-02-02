package com.ezen.royal.client.communication.dto;

import java.util.Date;

import lombok.Data;

public class FaqDTO {
	
	@Data
	public class QnaDTO {
		private Integer qna_id;
		private Integer member_id;
		private String qna_royal_name;
		private String qna_title;
		private String qna_content;
		private String qna_result;
		private Date qna_date;

	}


}
