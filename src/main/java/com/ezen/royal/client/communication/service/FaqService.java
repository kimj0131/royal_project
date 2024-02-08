package com.ezen.royal.client.communication.service;

import org.springframework.ui.Model;

public interface FaqService {
	
	boolean detail(int faq_id, Model model);

	void faq(Model model);
	
	Integer getUniqueValuesCount();
	
	void faq2(Model model, Integer royal_id);

}
