package com.ezen.royal.util;


import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;

public class EmailSender {
	
	public void EmailSender() {
		
	}

	public static void emailSender(String userEmail, String userName,String eventName, String eventDate, int round, String reservTime, int reservPeople) throws Exception {
		String to = userEmail; // 받는 사람의 이메일 주소
        String from = "rlaxogud4637@gmail.com"; // 보내는 사람의 이메일 주소
        String password = "suld hwul fuxu phla"; // 보내는 사람의 이메일 계정 비밀번호
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
        
        // 메일내용
        msg.setText(userName+"님의 예약 내역은"+ eventName +"/" +eventDate+"일"+reservTime+"시" +round+"회차 "+ reservPeople+" 명 입니다" );

        // 메일 보내기
        Transport.send(msg);
		
	}

}