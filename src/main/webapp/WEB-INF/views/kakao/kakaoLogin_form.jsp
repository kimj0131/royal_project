<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url value="/resources/image/kakao_login_large_wide_2.png" var="LOGIN_FORMAT_PNG"/>
<c:url value="/kakao/logout/ready" var="LOGOUT_URI"/>
<c:url value="/kakao/login/ready" var="LOGIN_URI"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오 로그인</title>
</head>
<body>
	<h1>카카오 로그인 페이지 입니다</h1>
	<!--<a href="./insert"><img src="${login_png}" alt="kakaoLogin" /></a>   -->
	<a href="${LOGIN_URI}">
		<img src="${LOGIN_FORMAT_PNG}" alt="kakaoLogin" />
	</a>
	<br>
	<button onClick="location.href='${LOGOUT_URI}'">로그아웃</button>
	
	<hr>
	<div>sessionScope : ${sessionScope.login_user}</div>

</body>
</html>