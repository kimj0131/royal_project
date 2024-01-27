package com.ezen.royal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.royal.mapper.RoyalInnerMapper;

@Service
public class OpenApiServiceImpl implements OpenApiService{
	
	@Autowired
	RoyalInnerMapper innerMapper;

	@Override
	public String cheakTable() {
//		model.addAttribute("chkResult", innerMapper.cheakTable());
		
		return innerMapper.cheakTable();
	}
	
}
