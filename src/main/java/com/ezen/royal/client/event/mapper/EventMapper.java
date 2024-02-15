package com.ezen.royal.client.event.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ezen.royal.client.event.dto.EventDTO;

public interface EventMapper {

	// event_type별 event_list를 가져오는 mapper
	List<EventDTO> getEventListByType(String event_type);
	
	
	// 월별 event_type이 행사인 event_list
	List<EventDTO> getMonthlyEventList(@Param("year") String yearStr, @Param("month") String monthStr);
	
	// 당월 event_type이 행사인 event_list
	List<EventDTO> getCurrentMonthEventList();
	
}
