<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/resources/image/kakao_login_large_wide.png" var="login_png"/>
<c:set value="82f23fea0e0fa84ea9fbaa0106491ed8" var="REST_API_KEY"/>
<c:set value="http://192.168.0.110:9000/royal/kakaoLogin/insert" var="REDIRECT_URI"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오 로그인</title>
</head>
<body>
	<h1>카카오 로그인 페이지 입니다</h1>
	<!--<a href="./insert"><img src="${login_png}" alt="kakaoLogin" /></a>   -->
	<a href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=${REST_API_KEY}&redirect_uri=${REDIRECT_URI}">
		<img src="${login_png}" alt="kakaoLogin" />
	</a>
	<button>로그아웃</button>
</body>
</html>