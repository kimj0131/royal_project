package com.ezen.royal.manager.service;

import java.util.List;

import org.springframework.ui.Model;

import com.ezen.royal.manager.dto.EventManageDTO;
import com.ezen.royal.manager.dto.EventRoundManageDTO;

public interface EventManageService {
	
	// event 리스트 가져오기
	void getEventList(Model model);
	// event 상세정보 가져오기
	void getEventDetail(Model model, int event_id);
	
	// event 추가
	int insertEvent(EventManageDTO dto, List<EventRoundManageDTO> roundList, int capacity);
	
	// event 수정
	int updateEvent(EventManageDTO dto, List<EventRoundManageDTO> roundList, int modify_id);
	
	// event_round 수정 (단일)
	int updateEventRound(EventRoundManageDTO roundManageDTO, int modify_round_id);
	
	// event 삭제
	int deleteEvent(int delete_id);

}
