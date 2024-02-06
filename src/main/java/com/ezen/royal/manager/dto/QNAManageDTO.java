package com.ezen.royal.manager.dto;

import java.util.Date;

import lombok.Data;

@Data
public class QNAManageDTO {
	
	private Integer qna_id;		// QNA ID
	private Integer member_id;	// 질문자 (연관된 고객(member) id)
	private Integer royal_id;	// 카테고리 (연관된 궁 ID)
	private String qna_title;	// QNA 제목
	private String qna_content;	// QNA 내용
	private String qna_result;	// QNA 답변 (관리자가 작성 시 채워짐)
	private Date qna_date;		// QNA 작성 날짜
	
}
