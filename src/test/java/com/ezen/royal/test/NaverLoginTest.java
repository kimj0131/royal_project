package com.ezen.royal.test;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class NaverLoginTest {

	public static void main(String[] args) {
		String baseUrl = "https://nid.naver.com/oauth2.0";
		String clientId = "N5HvSFFdmpPxwnX4OiLp";
		String redirectUrl = "http://localhost:9000/royal/index";
		String state = "1234";
		
		try {
			String encRedirectUrl = URLEncoder.encode(redirectUrl, "UTF-8");
			String encState =  URLEncoder.encode(state, "UTF-8");
			
			String url = baseUrl + "?response_type=code&client_id=" + clientId + "&redirect_uri=" + encRedirectUrl
					+ "&state=" + encState;
			
			System.out.println(url);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
}
