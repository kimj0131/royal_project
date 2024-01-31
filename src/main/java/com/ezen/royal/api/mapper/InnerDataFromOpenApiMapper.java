package com.ezen.royal.api.mapper;

import java.util.List;

import com.ezen.royal.api.dto.InnerDataFromOpenApiDTO;

public interface InnerDataFromOpenApiMapper {
	
	// 테이블이 비어있는지 확인
	String cheakTableEmpty();
	
	// 테이블이 비어있으면 api에서 데이터를 insert한다 
	int insertDataAll(List<InnerDataFromOpenApiDTO> list);
		
	// api에서 데이터를 업데이트 한다
	int updateDataAll();
	
	// 데이터가 있으면 update 없으면 insert한다
	int upsertDataAll(List<InnerDataFromOpenApiDTO> list);
	
}
