package com.ezen.royal.client.event.service;

import org.springframework.ui.Model;

public interface EventService {
	
	// event_type이 행사인 event_list
	/**
	 * event_type이 행사인 eventList를 가져온다 <br>
	 * attribute name = typeEventList
	 * 
	 */
	void getEventListInEventTable(Model model);
	
	// event_type이 해설인 event_list
	/**
	 * event_type이 해설인 eventList를 가져온다 <br>
	 * attribute name = typeCommentaryList
	 * 
	 */
	void getCommentListInEventTable(Model model);
	
	
	// 월별 event_type이 행사인 event_list
	/**
	 * 날짜를 연월 String타입으로 받아 해당 연월의 event_list를 가져온다 <br>
	 * attribute name = monthlyEventList
	 * 
	 */
	void getMonthlyEventList(Model model, String yearStr, String monthStr);
	
	// 당월 event_type이 행사인 event_list
	/**
	 * 당월에 해당하는 event_list를 가져온다
	 * attribute name = currentMonthEventList
	 * 
	 */
	void getCurrentMonthEventList(Model model);
	
	
}
