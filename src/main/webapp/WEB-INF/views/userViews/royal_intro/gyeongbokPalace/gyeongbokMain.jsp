<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:url value="/resources/css/gb.css" var="GBCSS" />
<meta charset="UTF-8">
<link rel="stylesheet" href="${GBCSS}" />
<title>경복궁 메인 페이지</title>
</head>
<body>

	<jsp:include page="../../../layout/header.jsp"/>
	<jsp:include page="../../../layout/navibar.jsp"/>
	
	<div class="mainPic">
		<div class="mainImage"><img src="../resources/image/main/gb/gyeongbokgung.jpg" alt=""></div>
		<div class="mainText">
			<div id="smallText">Gyeongbokgung Palace</div>
			<div id="bigText">경복궁</div>
		</div>
	</div>
	
	<div class="menu" style="margin:10px">
		<img src="../resources/image/main/gb/bg_menu01_01.jpg" alt="이미지" />
		<a href="/royal/palace/gyeongbokhistory">경복궁 소개, 역사</a>
	</div>
	<div class="menu" style="margin:10px">
		<a href="/royal/palace/royalInner">경복궁 내부 건축물</a>
		<img src="../resources/image/main/gb/bg_menu01_02.jpg" alt="이미지" />
	</div>
	<div class="menu" style="margin:10px">
		<img src="../resources/image/main/gb/bg_menu01_03.jpg" alt="이미지" />
		<a href="/royal/palace/royalInfo">관람안내</a>
	</div>
	<div class="menu" style="margin:10px">
		<a href="/royal/palace/reservation">해설*행사 예약</a>
		<img src="../resources/image/main/gb/bg_menu01_04.jpg" alt="이미지" />
	</div>
	<jsp:include page="../../../layout/footer.jsp"/>
</body>
</html>