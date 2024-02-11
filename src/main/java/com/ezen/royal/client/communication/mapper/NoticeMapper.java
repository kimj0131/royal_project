package com.ezen.royal.client.communication.mapper;

import java.util.List;

import org.springframework.ui.Model;

import com.ezen.royal.client.communication.dto.NoticeDTO;

public interface NoticeMapper {
	
	 List<NoticeDTO> getList();
	
	 NoticeDTO get(int notice_id);

	Integer getUniqueValuesCount();
	
}
