package com.ezen.royal.manager.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ezen.royal.manager.dto.EventManageDTO;
import com.ezen.royal.manager.dto.EventRoundManageDTO;
import com.ezen.royal.manager.mapper.EventManageMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class EventManageServiceImpl implements EventManageService {

	@Autowired
	EventManageMapper eventManageMapper;

	// 이벤트 전체 리스트
	@Override
	public void getEventList(Model model) {
		model.addAttribute("eventList", eventManageMapper.getEventList());
	}

	// 이벤트 상세내용
	@Override
	public void getEventDetail(Model model, int event_id) {
		model.addAttribute("event", eventManageMapper.getEventDetail(event_id));
		model.addAttribute("event_rounds", eventManageMapper.getEventRoundList(event_id));
	}

	// 이벤트 추가, 이벤트회차도 같이 추가한다
	@Override
	public int insertEvent(EventManageDTO dto, List<EventRoundManageDTO> roundList) {

		int result = eventManageMapper.insertEvent(dto);

		if (result > 0) {
			return eventManageMapper.insertEventRounds(roundList);
		} else {
			return -1;
		}
	}

	// 이벤트 수정
	@Override
	public int updateEvent(EventManageDTO dto, List<EventRoundManageDTO> roundList, int modify_id) {

		// 이벤트 수정시 회차 데이터를 다시 insert한다
		// 수정할 테이블의 event_id를 받아 round 데이터를 delete
		int delResult = eventManageMapper.deleteEventRound(dto.getEvent_id());
		if (delResult > 0) {
			// 삭제가 완료되었으면 전달받은 list를 insert
			int insResult = eventManageMapper.insertEventRoundsToUpdate(roundList);
			if (insResult > 0) {
				// 이후 이벤트를 update
				return eventManageMapper.updateEvent(dto);
			} else {
				return 0;
			}
		} else {
			return 0;
		}

	}

	// 이벤트 삭제
	@Override
	public int deleteEvent(int delete_id) {
		int roundResult = eventManageMapper.deleteEventRound(delete_id);
		if (roundResult > 0) {
			return eventManageMapper.deleteEvent(delete_id);
		} else {
			return 0;
		}
	}

}
