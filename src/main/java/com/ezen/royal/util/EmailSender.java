package com.ezen.royal.util;


import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;



public class EmailSender {
	
	public static void emailSender(Environment env,String reservationNum, String userEmail, String userName,String eventName, String eventDate, int eventRound, String eventTime, int reservPeople) throws Exception {
		
		String to = userEmail; // 받는 사람의 이메일 주소
        String from = env.getProperty("gmail.emailAddress"); // 보내는 사람의 이메일 주소
        String password = env.getProperty("gmail.password"); // 보내는 사람의 이메일 계정 앱비밀번호
        String host = "smtp.gmail.com"; // 구글 메일 서버 호스트 이름

        // SMTP 프로토콜 설정
        Properties props = new Properties();
        props.setProperty("mail.smtp.host", host);
        props.setProperty("mail.smtp.port", "587");
        props.setProperty("mail.smtp.auth", "true");
        props.setProperty("mail.smtp.starttls.enable", "true");
        props.setProperty("mail.smtp.ssl.trust", "smtp.gmail.com");
        props.setProperty("mail.smtp.ssl.protocols", "TLSv1.2");
        

        // 보내는 사람 계정 정보 설정
        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, password);
            }
        });

        // 메일 내용 작성
        Message msg = new MimeMessage(session);
        msg.setFrom(new InternetAddress(from));
        msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
        
        //제목
        msg.setSubject(userName+"님의 궁 행사예약 안내 메일입니다");
        
        String mailContent = "<h2>"+userName+"고객님의 궁 행사 예약 정보입니다 </h2>" + 
        		"<h2><span>"+userName+"</span>님의 예약번호는<span style='color:red;'>"+ reservationNum +"</span>입니다</h2>"+
        		"<h2><p><<예약 상세 내용>></p></h2>"+
        		"<p style='font-size:20px;'>행사명 : <span>"+eventName+"</span></p>"+
        		"<p style='font-size:20px;'>행사 예약일 : <span>" + eventDate+"</span></p>"+
        		"<p style='font-size:20px;'>행사 회차 / 시간 : <span>" +eventRound+"회 / " +eventTime+"</span></p>"+
        		"<p style='font-size:20px;'>예약 인원 : <span>" +reservPeople+ "명</span></p>";
       
        // 메일내용
        msg.setContent(mailContent, "text/html; charset=utf-8");
        
        // 메일 보내기
        Transport.send(msg);
	}
}