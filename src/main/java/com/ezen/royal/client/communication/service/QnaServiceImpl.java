package com.ezen.royal.client.communication.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.royal.client.communication.dto.QnaDTO;
import com.ezen.royal.client.communication.mapper.QnaMapper;

@Service
public class QnaServiceImpl implements QnaService {
	
	@Autowired
	QnaMapper qnaMapper;
	
	@Override
	public int insert(QnaDTO dto) {
		int result = qnaMapper.insert(dto);

		if (result > 0) {
			return dto.getQna_id();
		} else {
			return result;
		}
	}
}
