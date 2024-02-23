package com.ezen.royal.manager.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezen.royal.manager.dto.EventManageDTO;
import com.ezen.royal.manager.dto.EventRoundManageDTO;
import com.ezen.royal.manager.service.EventManageService;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/manage/main/event")
public class EventManageController {

	@Autowired
	EventManageService eventManageService;
	
	// 작업성공을 확인하는 변수
	private boolean processingResult = false;
	private void checkingProcess(HttpServletRequest request, String alertType) {
		// 작업성공여부 확인 후 데이터를 싣는다
		if (processingResult == true) {
			request.setAttribute("alertType", alertType);
			processingResult = false;
		}
	}
	
	@GetMapping("/form/*")
	public String manage_event_form(HttpServletRequest request, Model model) {

		// 행사 테이블 리스트 실어주기
		eventManageService.getEventList(model);

		String uri = request.getRequestURI();

		if (uri.endsWith("list")) {
			return "managerViews/main_views/event/list";
		} else if (uri.endsWith("insert")) {
			checkingProcess(request, "행사추가");
			return "managerViews/main_views/event/insert";
		} else if (uri.endsWith("update")) {
			checkingProcess(request, "행사수정");
			return "managerViews/main_views/event/update";
		} else if (uri.endsWith("delete")) {
			checkingProcess(request, "행사취소");
			return "managerViews/main_views/event/delete";
		} else {
			return "";
		}
	}

	/*
	 * # 넘겨 받는 파라미터 값들의 키 - EventManagerDTO 관련 [royal_id] [event_type] [event_name]
	 * [event_location] [start_date] [end_date] [event_link] [event_imgpath]
	 * [reservable] - EventRoundManageDTO 관련 [round + 숫자]
	 */
	@PostMapping("/post/*")
	public String manage_event_post(HttpServletRequest request) {
		String uri = request.getRequestURI();

		if (uri.endsWith("insert")) {
			String royal_id = request.getParameter("royal_id");
			String event_type = request.getParameter("event_type");
			String event_name = request.getParameter("event_name");
			String event_location = request.getParameter("event_location");
			String start_date = request.getParameter("start_date");
			String end_date = request.getParameter("end_date");
			String event_link = request.getParameter("event_link");
			String event_imgpath = request.getParameter("event_imgpath");
			String reservable = request.getParameter("reservable");
			String round_capacity = request.getParameter("round_capacity");

			// 유효성 검사

			// EventRoundManageDTO
			List<EventRoundManageDTO> eventRoundManageDTO_List = new ArrayList<>();
			for (int i = 1; i <= 10; ++i) {
				String round = request.getParameter(String.format("round%d", i));
				if (round == null) {
					break;
				} else {
					EventRoundManageDTO dto = new EventRoundManageDTO();
					dto.setRound_capacity(Integer.parseInt(round_capacity));
					dto.setRound_num(i);
					dto.setRound_time(round);
					eventRoundManageDTO_List.add(dto);
				}
			}

			// EventManageDTO
			EventManageDTO eventManageDTO = new EventManageDTO();
			eventManageDTO.setRoyal_id(Integer.parseInt(royal_id));
			eventManageDTO.setEvent_type(event_type);
			eventManageDTO.setEvent_name(event_name);
			eventManageDTO.setEvent_location(event_location);
			eventManageDTO.setEvent_rounds(eventRoundManageDTO_List.size());
			try {
				eventManageDTO.setStart_date(new SimpleDateFormat("yyyy-MM-dd").parse(start_date));
				eventManageDTO.setEnd_date(new SimpleDateFormat("yyyy-MM-dd").parse(end_date));
			} catch (ParseException e) {
				e.printStackTrace();
			}
			eventManageDTO.setEvent_link(event_link);
			eventManageDTO.setEvent_imgpath(event_imgpath);
			eventManageDTO.setReservable(reservable.charAt(0));

			// log
			// log.info(eventManageDTO);
			// log.info(eventRoundManageDTO_List);

			int result = eventManageService.insertEvent(eventManageDTO, eventRoundManageDTO_List);
			
			if(result > 0) {
				processingResult = true;
			}
			return "redirect:/manage/main/event/form/insert";

		} else if (uri.endsWith("update")) {
			
			String royal_id = request.getParameter("royal_id");
			String event_type = request.getParameter("event_type");
			String event_name = request.getParameter("event_name");
			String event_location = request.getParameter("event_location");
			String start_date = request.getParameter("start_date");
			String end_date = request.getParameter("end_date");
			String event_link = request.getParameter("event_link");
			String event_imgpath = request.getParameter("event_imgpath");
			String reservable = request.getParameter("reservable");
			String round_capacity = request.getParameter("round_capacity");

			
			// 유효성 검사

			
			// modified_id
			int modified_id = Integer.parseInt(request.getParameter("selected_event"));
			
			// EventRoundManageDTO
			List<EventRoundManageDTO> eventRoundManageDTO_List = new ArrayList<>();
			for (int i = 1; i <= 10; ++i) {
				String round = request.getParameter(String.format("round%d", i));
				if (round == null) {
					break;
				} else {
					EventRoundManageDTO dto = new EventRoundManageDTO();
					dto.setRound_capacity(Integer.parseInt(round_capacity));
					dto.setRound_num(i);
					dto.setEvent_id(modified_id);
					dto.setRound_time(round);
					eventRoundManageDTO_List.add(dto);
				}
			}

			// EventManageDTO
			EventManageDTO eventManageDTO = new EventManageDTO();
			eventManageDTO.setEvent_id(modified_id);
			eventManageDTO.setRoyal_id(Integer.parseInt(royal_id));
			eventManageDTO.setEvent_type(event_type);
			eventManageDTO.setEvent_name(event_name);
			eventManageDTO.setEvent_location(event_location);
			eventManageDTO.setEvent_rounds(eventRoundManageDTO_List.size());
			try {
				eventManageDTO.setStart_date(new SimpleDateFormat("yyyy-MM-dd").parse(start_date));
				eventManageDTO.setEnd_date(new SimpleDateFormat("yyyy-MM-dd").parse(end_date));
			} catch (ParseException e) {
				e.printStackTrace();
			}
			
			if(event_link != null) {
				eventManageDTO.setEvent_link(event_link);
			}
			if(event_imgpath != null) {
				eventManageDTO.setEvent_imgpath(event_imgpath);
			}
			
			eventManageDTO.setReservable(reservable.charAt(0));

			// log
			// log.info(eventManageDTO);
			// log.info(eventRoundManageDTO_List);
			
			int result = eventManageService.updateEvent(eventManageDTO, eventRoundManageDTO_List);
			
			if(result > 0) {
				processingResult = true;
			}
			
			return "redirect:/manage/main/event/form/update";
		} else if (uri.endsWith("delete")) {
			int result = eventManageService.deleteEvent(Integer.parseInt(request.getParameter("event_id")));
			
			if(result > 0) {
				processingResult = true;
			}
			
			return "redirect:/manage/main/event/form/delete";
		} else {
			return "";
		}
	}
	
	@ResponseBody
	@GetMapping("/ajax/{event_id}")
	public String manage_event_ajax_get(@PathVariable("event_id") Integer event_id, HttpServletRequest request,
			Model model) {

		eventManageService.getEventDetail(model, event_id);

		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> data = new HashMap<>();
		String result = null;

		data.put("event", model.getAttribute("event"));
		data.put("event_rounds", model.getAttribute("event_rounds"));

		try {
			result = mapper.writeValueAsString(data);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
}
