package com.ezen.royal.manager.service;

import java.util.List;

import org.springframework.ui.Model;

import com.ezen.royal.manager.dto.EventManageDTO;
import com.ezen.royal.manager.dto.EventRoundManageDTO;

public interface EventManageService {
	
	// event 리스트 가져오기
	/**
	 *  * 이벤트 테이블의 전체 목록을 attribute에 list로 싣는다. <br>
	 *  ※ attribute name = eventList
	 */
	void getEventList(Model model);
	// event 상세정보 가져오기 
	/**
	 *  * 이벤트 테이블의 지정된 내용을 attribute에 싣는다. <br>
	 *  ※ attribute name = event	<br>
	 *  ※ attribute name = event_rounds	<br>
	 */
	void getEventDetail(Model model, int event_id);
	
	// event 추가
	/**
	 * * EventManageDTO를 전달받아 DB에 추가한다 <br>
	 * ※ 성공시 1, 실패시 -1을 반환한다 <br>
	 * ※ 추가 시 이벤트 회차 테이블 데이터도 생성, 추가한다. <br>
	 *   - 시간은 1시간 간격으로 생성됨 (수정가능)
	 */
	int insertEvent(EventManageDTO dto, List<EventRoundManageDTO> roundList);
	
	// event 수정
	/**
	 * * EventManageDTO와 수정할 event_id를 전달받아 수정한다 <br>
	 * ※ 성공시 1, 실패시 -1을 반환한다 <br>
	 * ※ 수정 시 event_rounds의 값이 차이가 있으면 event_round를 추가하거나 삭제한다
	 */
	int updateEvent(EventManageDTO dto, List<EventRoundManageDTO> roundList, int modify_id);
	
	// event_round 수정 (단일)
	/**
	 * * EventRoundManageDTO와 수정할 round_id를 전달받아 수정한다 <br>
	 * ※ 성공시 1를 반환한다 <br>
	 */
	int updateEventRound(EventRoundManageDTO roundManageDTO, int modify_round_id);
	
	// event 삭제
	/**
	 * * round_id를 전달받아 삭제한다 <br>
	 * ※ 성공시 1를 반환한다 <br>
	 */
	int deleteEvent(int delete_id);

}
