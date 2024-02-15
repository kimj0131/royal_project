package com.ezen.royal.client.event.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ezen.royal.client.event.service.EventService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/palace")
public class EventController {
	
	@GetMapping("/event") // 행사
	public String event() {
		return "/userViews/reservation/event";
		
	}
//	@GetMapping("/event/img")
//	public String eventimg(String imgpath) {
//		return "/userViews/reservation/event";
//		
//	}
	@GetMapping("/event-images")
	@ResponseBody
	public List<String> getEventImagesForMonth(@RequestParam("month") String month) {
	    
	    return null;
	}

}
