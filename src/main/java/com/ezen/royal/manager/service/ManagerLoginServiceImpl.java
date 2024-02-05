package com.ezen.royal.manager.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;

import com.ezen.royal.secure.SecureTools;

@Service
@PropertySource("classpath:config/adminAcc.properties")
public class ManagerLoginServiceImpl implements ManagerLoginService {
	
	@Autowired
	Environment environment;

	// 아이디, 패스워드 문자열을 변환하는 메서드
	public String getSecurePwd(String password) {
		return SecureTools.getHashedString(password);
	}
	public String getSecureId(String id) {
		return SecureTools.getHashedString(id);
	}

	// 아이디와 비밀번호 해시문자열을 비교
	@Override
	public int verification(String id, String password) {
		String hashedId = getSecurePwd(id);
		String hashedPwd = getSecurePwd(password);
		
		String designateId = environment.getProperty("admin.login.id");
		String designatePwd = environment.getProperty("admin.login.password");
		
		if (hashedId.equals(designateId) && hashedPwd.equals(designatePwd)) {
			return 1;
		} else {
			return -1;
		}
	}
}
