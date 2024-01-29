package com.ezen.royal.service;

import java.io.UnsupportedEncodingException;

public interface LoginService {

	String getNaverAuthorizeUrl(String type) throws UnsupportedEncodingException;
	
	String getNaverTokenUrl(String type) throws UnsupportedEncodingException;
	
	
	void getKaKaoAuthorizeUrl();
}
