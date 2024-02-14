package com.ezen.royal.client.communication.service;

import com.ezen.royal.client.communication.dto.QnaDTO;

public interface QnaService {
	
	int qnaInsert(QnaDTO dto);

	int getMemberId(String social_id);
}
