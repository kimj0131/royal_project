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
	
	// Event List start in 30days
	List<EventManageDTO> getEventListBegin30Days();
	
	// Event Insert
	int insertEvent(EventManageDTO dto);
	// Event_Round Insert
	int insertEventRounds(List<EventRoundManageDTO> list);
	// Event_Round Insert to update
	int insertEventRoundsToUpdate(List<EventRoundManageDTO> list);
	
	

	// Event Update
	int updateEvent(EventManageDTO dto);
	
	// Event_Round Update > not use
	// int updateEventRound(EventRoundManageDTO roundDTO, int modify_id);
	
	// Event Delete
	int deleteEvent(int delete_id);
	// Event_Round Delete
	int deleteEventRound(int delete_id);
	// Eveny_Round Delete one to max round_num > not use
	// int deleteEventRoundToMaxRoundNum(int delete_id);

}
