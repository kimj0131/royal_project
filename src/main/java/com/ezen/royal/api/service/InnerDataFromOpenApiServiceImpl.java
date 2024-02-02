package com.ezen.royal.api.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.royal.api.mapper.InnerDataFromOpenApiMapper;
import com.ezen.royal.util.XMLdataParseToRoyalInnerFromOpenApi;

@Service
public class InnerDataFromOpenApiServiceImpl implements InnerDataFromOpenApiService{
	
	@Autowired
	InnerDataFromOpenApiMapper innerMapper;

	// insert만 할때 > 테이블이 비었으면 insert
	@Override
	public String cheakTableEmpty() {
		return innerMapper.cheakTableEmpty();
	}
	@Override
	public int insertApiDataList() {
		XMLdataParseToRoyalInnerFromOpenApi parseApi = new XMLdataParseToRoyalInnerFromOpenApi();
		
		return innerMapper.insertDataAll(parseApi.getParseDataList());
	}
	
	// upsert 방식 > royal_inner_id를 기준으로 데이터가 있으면 update 없으면 insert
	@Override
	public int upsertApiDataList() {
		XMLdataParseToRoyalInnerFromOpenApi parseApi = new XMLdataParseToRoyalInnerFromOpenApi();
		
		return innerMapper.upsertDataAll(parseApi.getParseDataList());
	}
}
