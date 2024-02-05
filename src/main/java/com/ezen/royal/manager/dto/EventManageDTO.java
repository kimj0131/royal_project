package com.ezen.royal.manager.dto;

import java.util.Date;

import lombok.Data;

@Data
public class EventManageDTO {
	
	private Integer event_id;
	private Integer royal_id;
	private String event_type;
	private String event_name;
	private String event_location;
	private Date start_date;
	private Date end_date;
	private String event_link;
	private String event_imgpath;
	private Character reservable;

}
