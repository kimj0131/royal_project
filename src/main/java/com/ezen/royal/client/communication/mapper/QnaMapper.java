package com.ezen.royal.client.communication.mapper;

import java.util.List;

import com.ezen.royal.client.communication.dto.QnaDTO;

public interface QnaMapper {
	
	List<QnaDTO> getAll();
	
	QnaDTO get(int Qna_id);

	int insert(QnaDTO dto);

}
