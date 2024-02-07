package com.ezen.royal.client.communication.mapper;

import java.util.List;

import com.ezen.royal.client.communication.dto.FaqDTO;
import com.ezen.royal.client.communication.dto.NoticeDTO;

public interface NoticeMapper {
	
	public List<NoticeDTO> getList();
	
	public NoticeDTO get(int notice_id);

	Integer getUniqueValuesCount();
	
}
