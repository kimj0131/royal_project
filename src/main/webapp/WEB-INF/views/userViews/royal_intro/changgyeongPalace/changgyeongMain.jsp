<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/royal_intro/changgyeonggung.css" var="CGCSS" />
<meta charset="UTF-8">
<link rel="stylesheet" href="${CGCSS}" />
<title>${palaceName} 메인 페이지</title>
</head>
<body>

	<jsp:include page="/WEB-INF/views/layout/header.jsp"/>
	<jsp:include page="/WEB-INF/views/layout/navibar.jsp"/>
	
	<div class="mainPic">
		<div class="mainImage"><img src="../resources/image/royal_inner/main/changgyeong/changgyeonggung.jpg" alt=""></div>
		<div class="mainText">
			<div id="smallText">Changgyeonggung Palace</div>
			<div id="bigText">창경궁</div>
		</div>
	</div>
	
	<div class="banner">
	<a href="/royal/palace/changgyeonghistory">
		<div class="menu" style="margin:10px">
			<img src="../resources/image/royal_inner/main/changgyeong/bg_menu03_01.jpg" alt="이미지" />
			창경궁 소개, 역사
		</div>
	</a>
	
	<a href="/royal/palace/royalInner?palace=창경궁&royalId=3">
		<div class="menu" style="margin:10px">
			창경궁 내부 건축물<img src="../resources/image/royal_inner/main/changgyeong/bg_menu03_02.jpg" alt="이미지" />
		</div>
	</a>

	<a href="/royal/palace/viewing_time">
		<div class="menu" style="margin:10px">
			<img src="../resources/image/royal_inner/main/changgyeong/bg_menu03_03.jpg" alt="이미지" />
	   		관람안내
		</div>
	</a>
	
	<a href="/royal/palace/reservation">
		<div class="menu" style="margin:10px">
	   		해설*행사 예약
			<img src="../resources/image/royal_inner/main/changgyeong/bg_menu03_04.jpg" alt="이미지" />
		</div>
	</a>
	</div>
	
	<jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
</body>
</html>