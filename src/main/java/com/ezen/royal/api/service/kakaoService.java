package com.ezen.royal.api.service;

import javax.servlet.http.HttpServletRequest;

public interface kakaoService {
	
	public String getAccessToken (String code, HttpServletRequest req);
	
	public String logout(String token, HttpServletRequest req);
	
	public void getUserInfo(String token);
	
}
