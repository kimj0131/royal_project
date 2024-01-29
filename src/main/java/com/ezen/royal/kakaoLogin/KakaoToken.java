package com.ezen.royal.kakaoLogin;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

@Service
@PropertySource("classpath:config/kakao.properties") // kakao.properties 사용하기 위한 어노테이션
public class KakaoToken {
	
    @Autowired
    Environment env; // kakao.properties 사용하기 위한 객체
	
	private static String REDIRECT_URI = "/royal/kakao/login";

    public String getKakaoAccessToken (String code, HttpServletRequest req) {
        String access_Token = "";
        String refresh_Token = "";
        String reqURL = "https://kauth.kakao.com/oauth/token";

        try {
            URL url = new URL(reqURL);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();

            //POST 요청을 위해 기본값이 false인 setDoOutput을 true로
            conn.setRequestMethod("POST");
            conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
            conn.setDoOutput(true);

            //POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
            StringBuilder sb = new StringBuilder();
            sb.append("grant_type=authorization_code");
            sb.append("&client_id=" + env.getProperty("REST_API_KEY")); // TODO REST_API_KEY 입력
            sb.append("&redirect_uri=http://" + env.getProperty("IP")+ REDIRECT_URI); // TODO 인가코드 받은 redirect_uri 입력
            sb.append("&code=" + code);
            bw.write(sb.toString());
            bw.flush();
            
            //결과 코드가 200이라면 성공
            int responseCode = conn.getResponseCode();
            System.out.println("responseCode : " + responseCode);
            
            //요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line = "";
            String result = "";

            while ((line = br.readLine()) != null) {
                result += line;
            }
            System.out.println("response body : " + result);
            
            // JSON파싱
            JsonElement element = JsonParser.parseString(result);
            
            access_Token = element.getAsJsonObject().get("access_token").getAsString();
            refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();

            System.out.println("access_token : " + access_Token);
            System.out.println("refresh_token : " + refresh_Token);

            br.close();
            bw.close();
            
        } catch (IOException e) {
            e.printStackTrace();
        }
        // 세션 어트리뷰트에 저장
        req.getSession().setAttribute("token", access_Token);
        
        return access_Token;
    }
}