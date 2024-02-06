package com.ezen.royal.manager.service;

import org.springframework.ui.Model;

public interface QnaManageService {

	// QNA 리스트 가져오기
	void getQNAList(Model model);
	// 답변이 달리지 않은 QNA 리스트 가져오기
	void getQNAListResultEmpty(Model model);
	// QNA 상세 가져오기
	void getQNADetail(Model model, int qna_id);
	
	// QNA 답변달기 (수정과 같음)
	int updateQNA(String result, int modify_id);
}
