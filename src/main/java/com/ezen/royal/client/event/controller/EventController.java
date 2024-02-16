package com.ezen.royal.client.event.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezen.royal.client.event.dto.EventDTO;
import com.ezen.royal.client.event.service.EventService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/palace")
public class EventController {
	
	@Autowired
	EventService eventService;
	
	@GetMapping("/event") // 행사
	public String event() {
		return "/userViews/reservation/event";
		
	}
	
	
	@GetMapping("/event/ajax/get")
	@ResponseBody
	public List<EventDTO> getMonthlyEventList(HttpServletRequest request) {

		String year = request.getParameter("year");
		String month = request.getParameter("month");
		
		
		
	    return eventService.getMonthlyEventList(year, month);
	}
	
}
