package com.ezen.royal.client.communication.service;

import org.springframework.ui.Model;

public interface NoticeService {
	
	void getNoticeList(Model model);
	
	Integer getUniqueValuesCount();

}
