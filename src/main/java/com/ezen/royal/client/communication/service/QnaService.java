package com.ezen.royal.client.communication.service;

import java.util.List;

import org.springframework.ui.Model;

import com.ezen.royal.client.communication.dto.QnaDTO;

public interface QnaService {
	
	void qna(Model model);
	
	int write(QnaDTO dto);
}
