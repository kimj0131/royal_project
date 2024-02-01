package com.ezen.royal.util;

import javax.servlet.http.HttpServletRequest;

public class MakeDefaultAddress {
	
	public static String getMakeDefaultAddress(HttpServletRequest req) {
		String defaultAddress = 
				req.getScheme() 
				+ "://" 
				+ req.getServerName() + ":" 
				+ req.getServerPort() 
				+ req.getContextPath();
		
		System.out.println(defaultAddress);
		return  defaultAddress;
	}
}
