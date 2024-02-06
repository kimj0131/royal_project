package com.ezen.royal.client.communication.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ezen.royal.client.communication.dto.QnaDTO;
import com.ezen.royal.client.communication.mapper.QnaMapper;

@Service
public class QnaServiceImpl implements QnaService {
	
	@Autowired
	QnaMapper qnaMapper;
	

	@Override
	public void qna(Model model) {
		model.addAttribute("qna", qnaMapper.getAll());
		
	}

	
	@Override
	public int write(QnaDTO dto) {
		int result = qnaMapper.insert(dto);

		if (result == 1) {
			return dto.getQna_id();
		} else {
			return result;
		}
	}
}
