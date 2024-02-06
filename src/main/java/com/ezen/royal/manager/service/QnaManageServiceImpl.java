package com.ezen.royal.manager.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ezen.royal.manager.mapper.QnaManageMapper;

@Service
public class QnaManageServiceImpl implements QnaManageService{

	@Autowired
	QnaManageMapper qnaManageMapper;
	
	// QNA 전체 리스트
	/**
	 * * QNA의 전체 목록을 attribute에 list로 싣는다 <br>
	 * ※ attribute name = QNAList
	 */
	@Override
	public void getQNAList(Model model) {
		model.addAttribute("QNAList", qnaManageMapper.getQNAList());
	}
	// 답변이 비어있는 QNA 전체 리스트
	/**
	 * * 답변이 없는 QNA의 전체 목록을 attribute에 list로 싣는다 <br>
	 * ※ attribute name = emptyResultQNAList
	 */
	@Override
	public void getQNAListResultEmpty(Model model) {
		model.addAttribute("emptyResultQNAList", qnaManageMapper.getQNAListResultEmpty());
	}
	// QNA 하나 가져오기 
	/**
	 * * QNA 하나를 attribute에 싣는다 <br>
	 * ※ attribute name = QNA
	 */
	@Override
	public void getQNADetail(Model model, int qna_id) {
		model.addAttribute("QNA", qnaManageMapper.getQNADetail(qna_id));
	}

	// QNA 답변 추가(수정)
	/**
	 * * QNA에 답변을 달아준 것을 Update한다 <br>
	 * ※ 성공시 1를 반환한다 <br>
	 */
	@Override
	public int updateQNA(String result , int modify_id) {
		return qnaManageMapper.updateQNA(result, modify_id);
	}

}
