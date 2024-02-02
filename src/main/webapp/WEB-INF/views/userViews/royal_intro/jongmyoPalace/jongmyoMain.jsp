<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/royal_intro/jongmyo.css" var="JMCSS" />
<meta charset="UTF-8">
<link rel="stylesheet" href="${JMCSS}" />
<title>종묘 메인 페이지</title>
</head>
<body>

	<jsp:include page="/WEB-INF/views/layout/header.jsp"/>
	<jsp:include page="/WEB-INF/views/layout/navibar.jsp"/>

	<div class="mainPic">
		<div class="mainImage"><img src="../resources/image/royal_inner/main/jongmyo/jongmyo.jpg" alt=""></div>
		<div class="mainText">
			<div id="smallText">Jongmyo Shrine</div>
			<div id="bigText">종묘</div>
		</div>
	</div>

	<div class="banner">
	<a href="/royal/palace/jongmyohistory">
		<div class="menu" style="margin:10px">
		<img src="../resources/image/royal_inner/main/jongmyo/bg_menu05_01.jpg" alt="이미지" />
		종묘 소개, 역사
		</div>
	</a>
	
	<a href="/royal/palace/royalInner">
		<div class="menu" style="margin:10px">
			종묘 내부 건축물
			<img src="../resources/image/royal_inner/main/jongmyo/bg_menu05_02.jpg" alt="이미지" />
		</div>
	</a>
	
	<a href="/royal/palace/viewing_time">
		<div class="menu" style="margin:10px">
			<img src="../resources/image/royal_inner/main/jongmyo/bg_menu05_03.jpg" alt="이미지" />
			관람안내
		</div>
	</a>
	
	<a href="/royal/palace/reservation">
		<div class="menu" style="margin:10px">
			해설*행사 예약
			<img src="../resources/image/royal_inner/main/jongmyo/bg_menu05_04.jpg" alt="이미지" />
		</div>
	</a>
	</div>
	
	<jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
</body>
</html>