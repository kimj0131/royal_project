package com.ezen.royal.client.palace.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ezen.royal.client.palace.dto.RoyalDTO;
import com.ezen.royal.client.palace.dto.InnerDTO;
import com.ezen.royal.client.palace.mapper.RoyalInnerMapper;

@Service
public class RoyalInnerServiceImpl implements RoyalInnerService {
	
	
	@Autowired
	RoyalInnerMapper royalInnerMapper;
	/*
	  @Override
	    public void listRoyal(Model model) {
	        List<RoyalDTO> royals = royalInnerMapper.getAll();
	        model.addAttribute("royals", royals);
	    }
	*/

	@Override
	public InnerDTO getRoyalNameById(Integer royalId) {
		return royalInnerMapper.getRoyalNameById(royalId);
	}

	@Override
	public List<InnerDTO> royalInnerList(Integer royalId) {
		  return royalInnerMapper.royalInnerList(royalId);
	}
	
	
}
