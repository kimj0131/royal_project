package com.ezen.royal.test;

import com.ezen.royal.manager.dto.EventManageDTO;
import com.ezen.royal.manager.service.EventManageServiceImpl;

public class ManageMapperTest {

	public static void main(String[] args) {
		
		EventManageDTO dto = new EventManageDTO();
		dto.setEvent_rounds(6);
		
		@SuppressWarnings("unused")
		EventManageServiceImpl eventManageService = new EventManageServiceImpl();
		
//		eventManageService.insertEvent(dto, 50);
	}
}
