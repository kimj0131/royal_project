package com.ezen.royal.client.event.service;

import java.util.List;

import org.springframework.ui.Model;

import com.ezen.royal.client.event.dto.EventDTO;

public interface EventService {
	
	///////////////////////////////////////////////////////////
	// main, event
	
	// event_type이 행사인 event_list
	/**
	 * event_type이 행사인 eventList를 가져온다 <br>
	 * attribute name = typeEventList
	 * 
	 */
	void getEventListInEventTable(Model model);
	
	// 월별 event_type이 행사인 event_list
	/**
	 * 날짜를 연월 String타입으로 받아 해당 연월의 event_list를 가져온다 <br>
	 * attribute name = monthlyEventList
	 * 
	 */
	List<EventDTO> getMonthlyEventList(String yearStr, String monthStr);
	
	// 당월 event_type이 행사인 event_list
	/**
	 * 당월에 해당하는 event_list를 가져온다
	 * attribute name = currentMonthEventList
	 * 
	 */
	void getCurrentMonthEventList(Model model);
	
	
	////////////////////////////////////////////////////////////
	// reservation
	
	// event_type이 해설인 event_list
	/**
	 * event_type이 해설인 eventList를 가져온다 <br>
	 * attribute name = typeCommentaryList
	 * 
	 */
	void getCommentListInEventTable(Model model);
	
	// event 상세정보
	/**
	 * event_id로 event detail을 가져온다 <br>
	 * attribute name = eventDetail
	 */
	void getEventDetail(Model model, int event_id);
	
	// event_id로 event_round list
	/**
	 * event_id로 event_round list를 가져온다 <br>
	 * attribute name = eventRoundList
	 */
	void getEventRoundList(Model model, int event_id);
	
	
}
