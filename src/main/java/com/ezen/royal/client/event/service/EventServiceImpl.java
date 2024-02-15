package com.ezen.royal.client.event.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ezen.royal.client.event.mapper.EventMapper;

@Service
public class EventServiceImpl implements EventService {

	@Autowired
	EventMapper eventMapper;
	
	@Override
	public void getEventListInEventTable(Model model) {
		model.addAttribute("typeEventList", eventMapper.getEventListByType("행사"));
	}

	@Override
	public void getCommentListInEventTable(Model model) {
		model.addAttribute("typeCommentaryList", eventMapper.getEventListByType("해설"));
	}

	@Override
	public void getMonthlyEventList(Model model, String yearStr, String monthStr) {
		model.addAttribute("monthlyEventList", eventMapper.getMonthlyEventList(yearStr, monthStr));
	}
	
	@Override
	public void getCurrentMonthEventList(Model model) {
		model.addAttribute("currentMonthEventList", eventMapper.getCurrentMonthEventList());
	}

	
	
}