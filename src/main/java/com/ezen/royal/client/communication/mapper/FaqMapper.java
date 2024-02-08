package com.ezen.royal.client.communication.mapper;

import java.util.List;

import com.ezen.royal.client.communication.dto.FaqDTO;

public interface FaqMapper {
	
	List<FaqDTO> getAll();
	
	List<FaqDTO> getPartAll(Integer royal_id);
	
	FaqDTO get(int faq_id);
	
	Integer getUniqueValuesCount();

}
