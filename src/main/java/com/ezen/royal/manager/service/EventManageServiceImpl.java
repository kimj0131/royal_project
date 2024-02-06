package com.ezen.royal.manager.service;

import java.util.ArrayList;
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
public class EventManageServiceImpl implements EventManageService{

	@Autowired
	EventManageMapper eventManageMapper;
	
	// 이벤트 전체 리스트
	/**
	 *  * 이벤트 테이블의 전체 목록을 attribute에 list로 싣는다. <br>
	 *  ※ attribute name = events
	 */
	@Override
	public void getEventList(Model model) {
		model.addAttribute("events", eventManageMapper.getEventList());
	}

	// 이벤트 상세내용 
	/**
	 *  * 이벤트 테이블의 지정된 내용을 attribute에 싣는다. <br>
	 *  ※ attribute name = eventDetail
	 */
	@Override
	public void getEventDetail(Model model, int event_id) {
		model.addAttribute("eventDetail", eventManageMapper.getEventDetail(event_id));
	}

	// 이벤트 추가, 이벤트회차도 같이 추가한다
	/**
	 * * EventManageDTO를 전달받아 DB에 추가한다 <br>
	 * ※ 성공시 1, 실패시 -1을 반환한다 <br>
	 * ※ 추가 시 이벤트 회차 테이블 데이터도 생성, 추가한다. <br>
	 *   - 시간은 1시간 간격으로 생성됨 (수정가능)
	 */
	@Override
	public int insertEvent(EventManageDTO dto, List<EventRoundManageDTO> roundList, int capacity) {
		
//		// 이벤트 회차 추가
//		int eventRounds = dto.getEvent_rounds();
//		
//		List<EventRoundManageDTO> roundList = new ArrayList<>();
//		
//		int defaultHour = 9;
//		int defaultMin = 0;
//		for (int i = 0; i < eventRounds; i++) {
//			EventRoundManageDTO roundDTO = new EventRoundManageDTO();
//			
//			roundDTO.setEvent_id(dto.getEvent_id());
//			roundDTO.setRound_num(i + 1);
//			if(defaultHour + i >= 12) {
//				roundDTO.setRound_time(String.format("%02d:%02d", defaultHour + i + 1, defaultMin));
//			} else {
//				roundDTO.setRound_time(String.format("%02d:%02d", defaultHour + i, defaultMin));
//				
//			}
//			roundDTO.setRound_capacity(capacity);
//			
//			roundList.add(roundDTO);
//		}
		 log.info(roundList);
		int resultRound = eventManageMapper.insertEventRounds(roundList);
		
		if (resultRound > 0) {
			return eventManageMapper.insertEvent(dto);
		} else {
			return -1;
		}
	}

	// 이벤트 수정
	/**
	 * * EventManageDTO와 수정할 event_id를 전달받아 수정한다 <br>
	 * ※ 성공시 1, 실패시 -1을 반환한다 <br>
	 * ※ 수정 시 event_rounds의 값이 차이가 있으면 event_round를 추가하거나 삭제한다
	 */
	@Override
	public int updateEvent(EventManageDTO dto, List<EventRoundManageDTO> roundList, int modify_id) {
		
		// 이벤트 수정시 회차 수정 이력이 있으면 다시 insert한다
		if (dto.getEvent_rounds() != eventManageMapper.getEventDetail(modify_id).getEvent_rounds()) {
			int deleteResult = eventManageMapper.deleteEventRound(dto.getEvent_id());
			int insertResult = eventManageMapper.insertEventRounds(roundList);
			
			if (deleteResult > 0 && insertResult > 0) {
				return eventManageMapper.updateEvent(dto, modify_id);
			} else {
				return -1;
			}
		} else {
			return eventManageMapper.updateEvent(dto, modify_id);
		}
	}

	// 이벤트 회차 수정
	@Override
	public int updateEventRound(EventRoundManageDTO roundManageDTO) {
		return 0;
	}
	
	// 이벤트 삭제
	@Override
	public int deleteEvent(int delete_id) {
		return 0;
	}
	
}
