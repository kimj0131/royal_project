package com.ezen.royal.client.communication.mapper;

import com.ezen.royal.client.communication.dto.QnaDTO;

public interface QnaMapper {

	int insert(QnaDTO dto);

	Integer getMemberId(String social_id);


}
