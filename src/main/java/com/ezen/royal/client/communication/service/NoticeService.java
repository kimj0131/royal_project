package com.ezen.royal.client.communication.service;

import org.springframework.ui.Model;

public interface NoticeService {
	
	void getNoticeList(Model model);

	void getNoticeDTO(int notice_id, Model model);
	
	void getNoticeList_part(Model model, Integer royal_id);

	
	
	void search(Model model, String searchType, String searchString);
	
	

}
