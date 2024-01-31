package com.ezen.royal.api.service;

import javax.servlet.http.HttpServletRequest;

public interface KakaoService {
	
	public String getAccessToken (String code, HttpServletRequest req);
	
	public void logout(HttpServletRequest req);
	
	public int upsertMember(String token, HttpServletRequest req);
	
}
