package com.ezen.royal.manager.mapper;

import java.util.List;

import com.ezen.royal.manager.dto.EventManageDTO;
import com.ezen.royal.manager.dto.EventRoundManageDTO;

public interface EventManageMapper {

	/////////////////////////
	// Event List
	List<EventManageDTO> getEventList();
	// Event Detail
	EventManageDTO getEventDetail(int event_id);
	// Event_Round List
	List<EventRoundManageDTO> getEventRoundList(int event_id);
	
	// Event Insert
	int insertEvent(EventManageDTO dto);
	// Event_Round Insert
	int insertEventRounds(List<EventRoundManageDTO> list);
	

	// Event Update
	int updateEvent(EventManageDTO dto, int modify_id);
	// Event_Round Update *** 어떤방식으로 작성해야 할지 좀더 고민 ***
	// 단일로 받아서 Update
	int updateEventRound(EventRoundManageDTO roundDTO, int modify_id);
	// *** List로 받아서 Update
	int updateEventRoundList(List<EventRoundManageDTO> list);
	
	
	// Event Delete
	int deleteEvent(int delete_id);
	// Event_Round Delete
	int deleteEventRound(int delete_id);
	// Eveny_Round Delete one to max round_num
	int deleteEventRoundToMaxRoundNum(int delete_id);

}
