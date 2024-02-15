package com.ezen.royal.client.event.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ezen.royal.client.event.dto.EventDTO;
import com.ezen.royal.client.event.dto.EventRoundDTO;

public interface EventMapper {

	// event_type별 event_list를 가져오는 mapper
	List<EventDTO> getEventListByType(String event_type);
	
	
	// 월별 event_type이 행사인 event_list
	List<EventDTO> getMonthlyEventList(@Param("year") String yearStr, @Param("month") String monthStr);
	
	// 당월 event_type이 행사인 event_list
	List<EventDTO> getCurrentMonthEventList();
	
	// event_id로 event detail을 가져온다
	EventDTO getEventDetail(int event_id);
	
	// event_id로 event_round list를 가져온다
	List<EventRoundDTO> getEventRoundList(int event_id);
}
