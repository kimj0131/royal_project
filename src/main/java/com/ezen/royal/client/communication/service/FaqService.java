package com.ezen.royal.client.communication.service;

import org.springframework.ui.Model;

public interface FaqService {
	
	boolean detail(int faq_id, Model model);

	void getfaqList(Model model);
	
	void getfaqList_part(Model model, Integer royal_id);

}
