package com.ezen.royal.kakaoLogin;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

@Service
public class KakaoLogout {

	public void logout(String token, HttpServletRequest req) {

		// String reqURL = "https://kapi.kakao.com/v1/user/logout";
		String reqURL = "https://kapi.kakao.com/v1/user/unlink";

		// access_token을 이용하여 사용자 정보 조회
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();

			conn.setRequestMethod("POST");
			conn.setDoOutput(true);
			conn.setRequestProperty("Authorization", "Bearer " + token); // 전송할 header 작성, access_token전송

			// 결과 코드가 200이라면 성공
			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);

			// 요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";

			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);

			// JSON파싱
			JsonElement element = JsonParser.parseString(result);

			long id = element.getAsJsonObject().get("id").getAsLong();

			System.out.println("로그아웃 한 id : " + id);

			br.close();

		} catch (IOException e) {
			e.printStackTrace();
		}
		// 세션 어트리뷰트 삭제
		req.getSession().invalidate();
	}
}
