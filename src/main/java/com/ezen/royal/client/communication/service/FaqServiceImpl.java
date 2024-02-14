package com.ezen.royal.client.communication.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ezen.royal.client.communication.dto.FaqDTO;
import com.ezen.royal.client.communication.mapper.FaqMapper;

import jdk.internal.org.jline.utils.Log;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class FaqServiceImpl implements FaqService {
	
	@Autowired
	FaqMapper faqMapper;
	
	@Override
	public void getfaqList(Model model) {
		model.addAttribute("faq", faqMapper.getAll());
		
	}
	
	@Override
	public void getfaqList_part(Model model, Integer royal_id) {
		model.addAttribute("faq", faqMapper.getPartAll(royal_id));
		
	}
	

	@Override
	public boolean detail(int faq_id, Model model) {
		FaqDTO faq = faqMapper.get(faq_id);
		
		if (faq != null) {
			model.addAttribute("faq", faq);
			return true;
		} else {
			return false;
		}
	}

}

