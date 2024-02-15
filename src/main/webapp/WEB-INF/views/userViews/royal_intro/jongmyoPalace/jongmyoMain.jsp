<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/royal_intro/palaceMainIntro.css" var="introCSS" />
<meta charset="UTF-8">
<link rel="stylesheet" href="${introCSS}" />
<title>${palaceName} 메인 페이지</title>
</head>
<body>

	<jsp:include page="/WEB-INF/views/userViews/layout/header.jsp"/>
	<jsp:include page="/WEB-INF/views/userViews/layout/navibar.jsp"/>

	<div class="mainPic">
		<div class="mainImage"><img src="../resources/image/royal_inner/main/jongmyo/jongmyo.jpg" alt=""></div>
		<div class="mainText">
			<div id="smallText">Jongmyo Shrine</div>
			<div id="bigText">종묘</div>
		</div>
	</div>

	<div class="banner">
		<a href="/royal/palace/jongmyohistory" class="menu">
			<img src="../resources/image/royal_inner/main/jongmyo/bg_menu05_01.jpg" alt="이미지" />
			&nbsp; 종묘 소개, 역사
		</a><br/>
		
		<a href="/royal/palace/royalInner?palace=종묘&royalId=5" class="menu">
			종묘 내부 건축물 &nbsp;
			<img src="../resources/image/royal_inner/main/jongmyo/bg_menu05_02.jpg" alt="이미지" />
		</a><br/>
		
		<a href="/royal/palace/viewing_time" class="menu">
			<img src="../resources/image/royal_inner/main/jongmyo/bg_menu05_03.jpg" alt="이미지" />
			&nbsp; 관람안내
		</a><br/>
		
		<a href="/royal/palace/reservation" class="menu">
			해설*행사 예약 &nbsp;
			<img src="../resources/image/royal_inner/main/jongmyo/bg_menu05_04.jpg" alt="이미지" />
		</a><br/>
	</div>
	
	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp"/>
</body>
</html>