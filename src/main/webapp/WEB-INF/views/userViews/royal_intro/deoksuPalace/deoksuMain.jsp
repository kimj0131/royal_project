<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/royal_intro/deoksugung.css" var="DSCSS" />
<meta charset="UTF-8">
<link rel="stylesheet" href="${DSCSS}" />
<title>${palaceName} 메인페이지</title>
</head>
<body>

	<jsp:include page="/WEB-INF/views/userViews/layout/header.jsp"/>
	<jsp:include page="/WEB-INF/views/userViews/layout/navibar.jsp"/>
		
	<div class="mainPic">
		<div class="mainImage"><img src="../resources/image/royal_inner/main/deoksu/deoksugung.jpg" alt=""></div>
		<div class="mainText">
			<div id="smallText">Deoksugung Palace</div>
			<div id="bigText">덕수궁</div>
		</div>
	</div>
	
	<div class="banner">
	<a href="/royal/palace/deoksuhistory">
		<div class="menu" style="margin:10px">
			<img src="../resources/image/royal_inner/main/deoksu/bg_menu04_01.jpg" alt="이미지" />
			덕수궁 소개, 역사
		</div>
	</a>
	
	<a href="/royal/palace/royalInner?palace=덕수궁&royalId=4">
		<div class="menu" style="margin:10px">
			덕수궁 내부 건축물
			<img src="../resources/image/royal_inner/main/deoksu/bg_menu04_02.jpg" alt="이미지" />
		</div>
	</a>
	
	<a href="/royal/palace/viewing_time">
	<div class="menu" style="margin:10px">
		<img src="../resources/image/royal_inner/main/deoksu/bg_menu04_03.jpg" alt="이미지" />
		관람안내
	</div>
	</a>
	
	<a href="/royal/palace/reservation">
		<div class="menu" style="margin:10px">
			해설*행사 예약
			<img src="../resources/image/royal_inner/main/deoksu/bg_menu04_04.jpg" alt="이미지" />
		</div>
	</a>
	</div>
	
	<jsp:include page="/WEB-INF/views/userViews/layout/footer.jsp"/>
	
</body>
</html>