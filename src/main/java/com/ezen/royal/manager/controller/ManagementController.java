package com.ezen.royal.manager.controller;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import com.ezen.royal.manager.service.ManagerLoginService;
import com.ezen.royal.secure.SecureTools;
import com.fasterxml.jackson.core.exc.StreamWriteException;
import com.fasterxml.jackson.databind.DatabindException;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/YWRtaW5wYWdl")
public class ManagementController {

	@Autowired
	ManagerLoginService managerLoginService;

	@Autowired
	EventManageService eventManageService;

	// 관리자 로그인 페이지 매핑
	@GetMapping("/") // 관리자 로그인 페이지
	public String manager_login_view() {
		return "redirect:/YWRtaW5wYWdl/login";
	}

	@GetMapping("/login") // 관리자 로그인 페이지
	public String manager_login_view2() {
		return "managerViews/login_view";
	}

	// [TEST] id = royaladmin password = royaladmin
	// 관리자 로그인
	@PostMapping("/login")
	public String manager_login(HttpServletRequest request, HttpSession session) {

		String id = request.getParameter("ID");
		String pwd = request.getParameter("password");

		if (id != null && pwd != null) {
			int result = managerLoginService.verification(id, pwd);

			if (result > 0) {
				log.info("[INFO] 관리자 로그인");

				// 로그인 유지, 확인을 위해 어트리뷰트 설정 (해쉬코드 아이디값)
				session.setAttribute("login_admin", SecureTools.getHashedString(id));
				return "redirect:/YWRtaW5wYWdl/index";
			} else {
				// 관리자 계정 로그인에 실패했을 때
				log.warn("[WARNING] 계정정보가 다릅니다");
				return "redirect:/YWRtaW5wYWdl/login";
			}
		} else {
			log.warn("[WARNING] 관리자 로그인에 문제가 발생했습니다");
			return "redirect:/YWRtaW5wYWdl/login";
		}
	}

	// 로그아웃
	@GetMapping("/logout")
	public String manager_logout(HttpServletRequest request, HttpSession session) {
		// 세션초기화
		session.invalidate();
		// 초기화 후 로그인페이지로 리다이렉트
		return "redirect:/YWRtaW5wYWdl/login";
	}

	// [인덱스]
	@GetMapping("/index")
	public String manage_index() {
		return "managerViews/main_views/index";
	}

	// [예약] 삭제
	@GetMapping("/reservation/form/*")
	public String manage_reservation_delet(HttpServletRequest request) {
		String uri = request.getRequestURI();

		if (uri.endsWith("delete"))
			return "managerViews/main_views/reservation/delete";
		else
			return "";
	}

	// [행사관리]
	@GetMapping("/event/form/*")
	public String manage_event_form(HttpServletRequest request, Model model) {
		String uri = request.getRequestURI();

		if (uri.endsWith("insert")) {
			eventManageService.getEventList(model);
			return "managerViews/main_views/event/insert";
		} else if (uri.endsWith("update")) {
			return "managerViews/main_views/event/update";
		} else if (uri.endsWith("delete")) {
			return "managerViews/main_views/event/delete";
		} else {
			return "";
		}
	}

	@ResponseBody
	@GetMapping("/event/ajax/{event_id}")
	public String manage_event_ajax_get(@PathVariable("event_id") Integer event_id, HttpServletRequest request, Model model) {
		
		eventManageService.getEventDetail(model, event_id);
		
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> data = new HashMap<>();
		String result = null;
		
		data.put("event", model.getAttribute("event"));
		data.put("event_rounds", model.getAttribute("event_rounds"));

		System.out.println(model.getAttribute("event"));
		
		
		try {
			result = mapper.writeValueAsString(data);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	@PostMapping("/event/post/*")
	public String manage_event_post(HttpServletRequest request) {
		String uri = request.getRequestURI();

		if (uri.endsWith("insert")) {
			/*
				# 넘겨 받는 파라미터 값들의 키
					- EventManagerDTO 관련 
						[royal_id] [event_type] [event_name] [event_location]
						[start_date] [end_date] [event_link] [event_imgpath] [reservable]
					- EventRoundManageDTO 관련 
						[round + 숫자]
			*/
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
			log.info(eventManageDTO);
			log.info(eventRoundManageDTO_List);

			eventManageService.insertEvent(eventManageDTO, eventRoundManageDTO_List);
			return "managerViews/main_views/event/insert";
			
		} else if (uri.endsWith("update")) {
			return "";
		} else if (uri.endsWith("delete")) {
			return "";
		} else {
			return "";
		}
	}
}
