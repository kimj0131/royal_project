package com.ezen.royal.manager.dto;

import java.util.Date;

import lombok.Data;

@Data
public class ReservationManageDTO {
	
	private Integer resv_id;
	private Integer evetn_id;
	private Integer member_id;
	private Date resv_date;
	private Integer resv_people;
	
}
