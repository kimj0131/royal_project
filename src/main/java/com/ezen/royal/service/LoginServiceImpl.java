package com.ezen.royal.service;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.springframework.stereotype.Service;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

@Service
public class LoginServiceImpl implements LoginService{

	
	
	@Override
	public String getNaverAuthorizeUrl(String type) throws UnsupportedEncodingException{
		
		String baseUrl = "https://nid.naver.com/oauth2.0";
		String clientId = "N5HvSFFdmpPxwnX4OiLp";
		String redirectUrl = "http://localhost:9000/royal/user/login/naver/oauth";
		String state = "1234";
		
		UriComponents uriComponents = UriComponentsBuilder
				.fromUriString(baseUrl + "/" + type)
				.queryParam("response_type", "code")
				.queryParam("client_id", clientId)
				.queryParam("redirect_uri", URLEncoder.encode(redirectUrl, "UTF-8"))
				.queryParam("state", URLEncoder.encode(state, "UTF-8"))
				.build();
		
		return uriComponents.toString();
		
	}
	
	@Override
	public String getNaverTokenUrl(String type) throws UnsupportedEncodingException {
		
		String baseUrl = "https://nid.naver.com/oauth2.0";
		String clientId = "N5HvSFFdmpPxwnX4OiLp";
		String redirectUrl = "http://localhost:9000/royal/user/login/naver";
		String state = "1234";
		
		UriComponents uriComponents = UriComponentsBuilder
				.fromUriString(baseUrl + "/" + type)
				.queryParam("grant_type", "authorization_code")
				.queryParam("client_id", clientId)
				.queryParam("redirect_uri", URLEncoder.encode(redirectUrl, "UTF-8"))
				.queryParam("state", URLEncoder.encode(state, "UTF-8"))
				.build();
		
		return null;
	}

	@Override
	public void getKaKaoAuthorizeUrl() {
		
	}
	
	
	
	
}
