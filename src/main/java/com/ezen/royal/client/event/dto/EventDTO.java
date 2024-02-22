package com.ezen.royal.client.event.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class EventDTO {
	private Integer event_id;
	private Integer royal_id;
	private String event_type;
	private String event_name;
	private String event_location;
	private Integer event_rounds;
	private Date start_date;
	private Date end_date;
	private String event_link;
	private String event_imgpath;
	private Character reservable;
}
