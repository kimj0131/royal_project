package com.ezen.royal.manager.service;

import org.springframework.ui.Model;

public interface QnaManageService {

	// QNA 리스트 가져오기
	/**
	 * * QNA의 전체 목록을 attribute에 list로 싣는다 <br>
	 * ※ attribute name = QNAList
	 */
	void getQNAList(Model model);
	// 답변이 달리지 않은 QNA 리스트 가져오기
	/**
	 * * 답변이 없는 QNA의 전체 목록을 attribute에 list로 싣는다 <br>
	 * ※ attribute name = emptyResultQNAList
	 */
	void getQNAListResultEmpty(Model model);
	// QNA 상세 가져오기
	/**
	 * * QNA 하나를 attribute에 싣는다 <br>
	 * ※ attribute name = QNA
	 */
	void getQNADetail(Model model, int qna_id);
	
	// QNA 답변달기 (수정과 같음)
	/**
	 * * 답변 내용과 qna_id를 전달받아 Update한다 <br>
	 * ※ 성공시 1를 반환한다 <br>
	 */
	int updateQNA(String result, int modify_id);
}
