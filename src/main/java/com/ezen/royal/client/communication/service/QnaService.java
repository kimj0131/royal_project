package com.ezen.royal.client.communication.service;

import org.springframework.ui.Model;

import com.ezen.royal.client.communication.dto.QnaDTO;

public interface QnaService {
	
	boolean detail(int qna_id, Model model);
	
	int wirte(QnaDTO dto);

	void qna(Model model);
}
