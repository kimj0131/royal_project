package com.ezen.royal.service;

public interface OpenApiService {

	// 테이블이 비어있는지 확인하는 메서드
	String cheakTableEmpty();
	
	// 테이블에 테이터를 넣는 메서드
	int insertApiDataList();
	
}
