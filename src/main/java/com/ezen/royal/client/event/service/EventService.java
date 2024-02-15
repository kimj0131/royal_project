package com.ezen.royal.client.event.service;

import java.util.List;

import com.ezen.royal.client.event.dto.EventDTO;

public interface EventService {
	List<String> getEventList(String event_id);
	EventDTO getSelectedEventDTO(String eventName);
	List<String> getEventImagesForMonth(String month);
}
