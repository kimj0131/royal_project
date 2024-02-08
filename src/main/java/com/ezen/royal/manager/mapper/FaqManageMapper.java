package com.ezen.royal.manager.mapper;

import java.util.List;

import com.ezen.royal.manager.dto.FAQManageDTO;

public interface FaqManageMapper {
	
	/////////////////////////
	// FaQ List
	List<FAQManageDTO> getFAQList();
	// FaQ Detail
	FAQManageDTO getFAQResult(int faq_id);
	
	// FaQ Insert
	int insertFAQ(FAQManageDTO dto);
	
	// FaQ Update
	int updateFAQ(FAQManageDTO dto);
	
	// FaQ Delete
	int deleteFAQ(int delete_id);
	
}
