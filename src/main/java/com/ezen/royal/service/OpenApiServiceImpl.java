package com.ezen.royal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.royal.mapper.RoyalInnerMapper;
import com.ezen.royal.util.XMLdataParseForApi;

@Service
public class OpenApiServiceImpl implements OpenApiService{
	
	@Autowired
	RoyalInnerMapper innerMapper;

	@Override
	public String cheakTableEmpty() {
		return innerMapper.cheakTableEmpty();
	}
	
	@Override
	public int insertApiDataList() {
		XMLdataParseForApi parseApi = new XMLdataParseForApi();
		
		return innerMapper.insertDataAll(parseApi.getParseDataList());
	}
	
}
