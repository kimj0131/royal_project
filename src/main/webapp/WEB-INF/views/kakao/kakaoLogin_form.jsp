<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- root-context.xml에 등록한 kakao.properties파일 사용하기 -->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:eval expression="@environment['REST_API_KEY']" var="REST_API_KEY"/>
<spring:eval expression="@environment['IP']" var="IP"/>

<c:url value="/resources/image/kakao_login_large_wide.png" var="LOGIN_FORMAT_PNG"/>
<c:url value="/kakao/logout" var="LOGOUT_URI"/>
<c:set value="/royal/kakao/login" var="REDIRECT_URI"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오 로그인</title>
</head>
<body>
	<h1>카카오 로그인 페이지 입니다</h1>
	<!--<a href="./insert"><img src="${login_png}" alt="kakaoLogin" /></a>   -->
	<a href="https://kauth.kakao.com/oauth/authorize?
		response_type=code&
		client_id=${REST_API_KEY}&
		redirect_uri=${IP}${REDIRECT_URI}&
		prompt=login">
		<img src="${LOGIN_FORMAT_PNG}" alt="kakaoLogin" />
	</a>
	<br>
	<button onClick="location.href='${LOGOUT_URI}'">로그아웃</button>
	
	<hr>
	<div>sessionScope : ${sessionScope.token}</div> <br>
	<div>sessionScope : ${sessionScope.social_id}</div>
	<script>
		console.log();
	</script>
</body>
</html>