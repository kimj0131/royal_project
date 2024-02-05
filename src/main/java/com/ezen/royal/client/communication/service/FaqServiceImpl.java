package com.ezen.royal.client.communication.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ezen.royal.client.communication.dto.FaqDTO;
import com.ezen.royal.client.communication.mapper.FaqMapper;

@Service
public class FaqServiceImpl implements FaqService {
	
	@Autowired
	FaqMapper faqMapper;
	
	@Override
	public void faq(Model model) {
		model.addAttribute("faq", faqMapper.getAll());
		
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

	@Override
	public Integer getUniqueValuesCount() {
		return faqMapper.getUniqueValuesCount();
	}

}

