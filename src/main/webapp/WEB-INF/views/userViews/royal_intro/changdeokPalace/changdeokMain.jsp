<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/main/changdeokgung.css" var="CDCSS" />
<meta charset="UTF-8">
<link rel="stylesheet" href="${CDCSS}" />
<title>창덕궁 메인 페이지</title>
</head>
<body>

	<jsp:include page="../../../layout/header.jsp"/>
	<jsp:include page="../../../layout/navibar.jsp"/>
	
	<div class="mainPic">
		<div class="mainImage"><img src="../resources/image/main/changdeok/changdeokgung.jpg" alt=""></div>
		<div class="mainText">
			<div id="smallText">Changdeokgung Palace</div>
			<div id="bigText">창덕궁</div>
		</div>
	</div>
	
	<a href="/royal/palace/changdeokhistory">
		<div class="menu" style="margin:10px">
			<img src="../resources/image/main/changdeok/bg_menu02_01.jpg" alt="이미지" />
			창덕궁 소개, 역사
		</div>
	</a>
	
	<a href="/royal/palace/royalInner">
		<div class="menu" style="margin:10px">
			창덕궁 내부 건축물
			<img src="../resources/image/main/changdeok/bg_menu02_02.jpg" alt="이미지" />
		</div>
	</a>
	
	<a href="/royal/palace/royalInfo">
		<div class="menu" style="margin:10px">
			<img src="../resources/image/main/changdeok/bg_menu02_03.jpg" alt="이미지" />
			관람안내
		</div>
	</a>
	
	<a href="/royal/palace/reservation">
		<div class="menu" style="margin:10px">
			해설*행사 예약
			<img src="../resources/image/main/changdeok/bg_menu02_04.jpg" alt="이미지" />
		</div>
	</a>
	
	<jsp:include page="../../../layout/footer.jsp"/>
</body>
</html>