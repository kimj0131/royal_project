package com.ezen.royal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.royal.mapper.RoyalInnerMapper;
import com.ezen.royal.util.XMLdataParseForApi;

@Service
public class OpenApiServiceImpl implements OpenApiService{
	
	@Autowired
	RoyalInnerMapper innerMapper;

	// insert만 할때 > 테이블이 비었으면 insert
	@Override
	public String cheakTableEmpty() {
		return innerMapper.cheakTableEmpty();
	}
	@Override
	public int insertApiDataList() {
		XMLdataParseForApi parseApi = new XMLdataParseForApi();
		
		return innerMapper.insertDataAll(parseApi.getParseDataList());
	}
	
	// upsert 방식 > royal_inner_id를 기준으로 데이터가 있으면 update 없으면 insert
	@Override
	public int upsertApiDataList() {
		XMLdataParseForApi parseApi = new XMLdataParseForApi();
		
		return innerMapper.upsertDataAll(parseApi.getParseDataList());
	}
}
